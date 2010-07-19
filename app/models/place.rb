class Place < ActiveRecord::Base
	has_and_belongs_to_many :categories
	has_many :hours, :dependent => :destroy

	has_many :tour_stops
	has_many :tours, :through => :tour_stops

	belongs_to :building

	has_attached_file :photo, :styles => { :medium => "300x300>", :mobile => "300x300>", :thumbnail => "100x100>", :tour => "300x300>" }
	has_attached_file :audio, :default_url => ''
	has_attached_file :video, :default_url => ''

	validates_attachment_content_type :video, :content_type => [ 'video/x-msvideo', 'video/avi', 'video/quicktime', 'video/3gpp', 'video/x-ms-wmv', 'video/mp4', 'video/mpeg' ], :allow_blank => true
	validates_attachment_content_type :audio, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3' ], :allow_blank => true
	validates_attachment_size :audio, :less_than => 30.megabytes, :unless => Proc.new { |p| p.audio }

	validates_presence_of :name
	
	default_scope :order => 'places.name ASC'

	accepts_nested_attributes_for :hours, :allow_destroy => true

	attr_protected :id

	before_post_process :transliterate_file_name

	# Acts as State Machine
	include AASM

	aasm_initial_state :pending

	aasm_state :pending
	aasm_state :converting
	aasm_state :converted, :enter => :set_new_filename
	aasm_state :error

	aasm_event :convert do
		transitions :from => :pending, :to => :converting
		transitions :from => :error, :to => :converting
		transitions :from => :converted, :to => :converting
	end

	aasm_event :converted do
		transitions :from => :converting, :to => :converted
	end

	aasm_event :failed do
		transitions :from => :converting, :to => :error
	end

	def audio_duration
		if audio.file?
			require 'mp3info'
			duration = Mp3Info.open( audio.path ).length
		end
	end

	def mobile_video_url
		if video && video.original_filename && video_file_name_mobile
			video.url.gsub(video.original_filename, video_file_name_mobile)
		else
			video.url
		end
	end

	def current_open_status_boolean
		(current_open_status == 'Open') ? true : false
	end

	def current_open_status
		# Sort the Hour::DAYS array relative to the current day.
		hour_days = Hour::DAYS
		until hour_days[0]["order"] == Time.now.strftime("%u").to_i
			hour_days.push hour_days.shift
		end

		current_status = 'Closed'
		day = hour_days.first
		day_date = Date.today + hour_days.index(day).days

		hours.each do |hour|
			if hour.start_date <= day_date && hour.end_date >= day_date && hour.days.include?(day["abbreviation"].downcase) && hour.start_time.strftime("%T") <= Time.now.strftime("%T") && hour.end_time.strftime("%T") >= Time.now.strftime("%T")
				current_status = 'Open'
			end
		end

		current_status
	end

	def self.search(params)
		if params[:category].blank?
			category_condition = '1=1'
		else
			category_search = params[:category].gsub('-','%')
			category = Category.find(:first, :conditions => [ "categories.name LIKE ?", category_search ]).try(:id) || 0
			category_condition = "categories_places.category_id = #{category}"
			category_condition = '1=1' if category_search == '%'
		end

		conditions = ["places.name LIKE ? AND (places.location LIKE ? #{' OR 1=1' if params[:location].blank?}) AND (places.owner LIKE ? #{' OR 1=1' if params[:owner].blank?}) AND #{category_condition}", "#{params[:name]}" + '%', "#{params[:location]}" + '%', "#{params[:owner]}" + '%']
		includes = [:categories]
		Place.find(:all, :conditions => conditions, :include => includes)
	end

	# This method is called from the controller and takes care of the converting
	def convert
		if self.video.file?
			self.convert!

			success = system(convert_command)
			if success && $?.exitstatus == 0
				self.converted!
			else
				self.failed!
			end
		end
	end

	protected
		# This method creates the ffmpeg command that we'll be using
		def convert_command
			flv = File.join(File.dirname(self.video.path), "#{self.video_file_name}.flv")
			mpeg4 = File.join(File.dirname(self.video.path), "#{self.video_file_name}.mp4")
			File.open(flv, 'w')
			File.open(mpeg4, 'w')
			#command = "cd log/ && ffmpeg -i #{ self.video.path } -ar 22050 -ab 32 -s 480x360 -vcodec flv -r 25 -qscale 8 -f flv -y #{ flv }; ffmpeg -i #{ self.video.path } -an -pass 1 -vcodec libx264 -vpre fastfirstpass -b 1024k -bt 1024k -threads 0 -y #{ mpeg4 }"
			command = "cd log/ && ffmpeg -i '#{ self.video.path }' -ar 22050 -ab 32 -s 480x360 -vcodec flv -r 25 -qscale 8 -f flv -y '#{ flv }'; ffmpeg -threads 4 -i '#{ self.video.path }' -r 29.97 -vcodec libx264 -flags +loop -cmp +chroma -deblockalpha 0 -deblockbeta 0 -crf 24 -bt 256k -refs 1 -coder 0 -subq 5 -g 250 -keyint_min 25 -level 30 -qmin 10 -qmax 51 -sc_threshold 40 -i_qfactor 0.71 -acodec libfaac -ab 128k -ar 48000 -ac 2 '#{ mpeg4 }'"

			command.gsub!(/\s+/, " ")
			logger.debug command
		end

		# This update the stored filename with the new flash video file
		def set_new_filename
			update_attribute(:video_file_name_mobile, "#{self.video_file_name}.mp4")
			update_attribute(:video_file_name, "#{self.video_file_name}.flv")
			update_attribute(:video_content_type, "application/x-flash-video")
		end

	private
		# This method finds all of the attributes in the format of '*_file_name'
		# and loops through each changing the filename.
		def transliterate_file_name
			file_names = Array.new
			@attributes.keys.each { |a| file_names << a if a.match(/_file_name{1}$/) }
			file_names.each do |local_file_name|
				if self.send(local_file_name).present? && self.send(local_file_name+'_changed?')
					extension = File.extname(send(local_file_name)).gsub(/^\.+/, '')
					filename = send(local_file_name).gsub(/\.#{extension}$/, '')
					self.send(local_file_name.gsub(/_file_name{1}$/, '')).instance_write(:file_name, "#{transliterate(filename)}.#{transliterate(extension)}")
				end
			end
		end

end

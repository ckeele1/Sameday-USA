class Building < ActiveRecord::Base
	has_and_belongs_to_many :places
	
	validates_presence_of :name

	acts_as_taggable

	has_attached_file :photo, :styles => { :medium => "300x300>", :mobile => "300x300>", :thumbnail => "100x100>" }

	before_post_process :transliterate_file_name

	def self.search(params)
		conditions = ["buildings.name LIKE ? AND (buildings.building_code LIKE ? #{' OR 1=1' if params[:building_code].blank?})", "#{params[:name]}" + '%', "#{params[:building_code]}" + '%']
		Building.find(:all, :conditions => conditions)
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
class Group < ActiveRecord::Base
	acts_as_authorization_role

	has_and_belongs_to_many :users

	validates_presence_of :name

	named_scope :available, :conditions => ['groups.name NOT LIKE ?', 'owner']

	# Search
	def self.search(search, page, sort_on='name', sort_dir='ASC')
		conditions = ""
		order = "#{sort_on} #{sort_dir}"
		order = "name ASC" if order.blank?

		unless search.blank? || search == "Search terms"
			conditions_was = conditions
			conditions = conditions + " AND (" unless conditions.blank?
			conditions_was
			# Split the search query and remove extra spaces
			terms = search.split(/\s+/)
			conditions = conditions + terms.collect do |term|
			 "groups.name LIKE '#{term}'"
			end.join(" OR ")
			conditions = conditions + ")" unless conditions_was.blank?
		end

		per_page = 30
		if page == "ALL"
			per_page = 99999
			page = 1
		end
		# Pass the paginate values
		paginate :per_page => per_page, :page => page,
			:conditions => conditions, :order => order
	end

end

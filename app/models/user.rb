class User < ActiveRecord::Base

	acts_as_authentic do |c|
		c.validate_password_field = false
		c.login_field = :username
	end

	acts_as_authorization_subject :role_class_name => 'Group'
	acts_as_tagger

	has_and_belongs_to_many :groups
	
	attr_accessible :first_name, :middle_name, :last_name, :username, :group_ids

	validates_presence_of :username, :first_name, :last_name

	def login
		username
	end

	def login=(login)
		self.username = login
	end
end
class User < ActiveRecord::Base

  acts_as_authentic
	acts_as_authorization_subject :role_class_name => 'Group'
	acts_as_tagger

	has_and_belongs_to_many :groups
	
	attr_accessible :first_name, :middle_name, :last_name, :login, :group_ids

	validates_presence_of :login, :first_name, :last_name

end
class User < ActiveRecord::Base
  	acts_as_authentic
	acts_as_authorization_subject :role_class_name => 'Group'
	acts_as_tagger

	has_and_belongs_to_many :groups
	has_many :alliance_members
	has_many :counties :through => :alliance_members
	
	attr_accessible :first_name, :middle_name, :last_name, :login, :group_ids, :password, :password_confirmation

	validates_presence_of :login, :first_name, :last_name

end
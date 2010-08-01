class County < ActiveRecord::Base
	belongs_to :states
	has_many :alliance_members
end

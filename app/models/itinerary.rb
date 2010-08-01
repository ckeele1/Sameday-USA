class Itinerary < ActiveRecord::Base
	has_and_belongs_to_many :places
	has_and_belongs_to_many :events
	has_and_belongs_to_many :date_breaks
	belongs_to :alliance_members
end

class Event < ActiveRecord::Base
	has_and_belongs_to_many :itineraries
	belongs_to :counties
	has_many :numbers
	has_many :websites
	has_many :emails
	has_many :coupons
end

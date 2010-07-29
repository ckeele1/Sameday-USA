class DateBreak < ActiveRecord::Base
	has_and_belongs_to_many :itineraries
end

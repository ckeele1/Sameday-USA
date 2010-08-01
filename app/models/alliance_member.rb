class AllianceMember < ActiveRecord::Base
	belongs_to :counties
	has_many :numbers
	has_many :websites
	has_many :emails
	has_many :coupons
end

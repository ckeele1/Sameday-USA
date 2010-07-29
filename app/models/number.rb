class Number < ActiveRecord::Base
	belongs_to :place
	belongs_to :device
end

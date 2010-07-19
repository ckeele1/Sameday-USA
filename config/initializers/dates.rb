require 'date'

class Date
	def days_in_month
		self::class.civil(year, month, -1).day
	end
	alias dim days_in_month

	def weekdays
		(1..dim).to_a
	end

	def weekdays_with_labels
		wwl = Array.new
		(1..dim).each do |day|
			parsed_date = Date.parse("#{year}-#{month}-#{day}")
			wwl << {'day_of_month' => day, 'full_name' => parsed_date.strftime("%A"), 'abbreviation' => parsed_date.strftime("%a"), 'order' => parsed_date.strftime("%u")}
		end
		wwl
	end
end
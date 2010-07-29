class Hour < ActiveRecord::Base

	has_and_belongs_to_many :places
	validates_presence_of :start_date, :start_time, :end_time, :days

	def days_mon
		true if days.to_s.split(',').include?('mon')
	end
	def days_mon=(day)
		add_or_remove_day_from_days(day, 'mon')
	end

	def days_tue
		true if days.to_s.split(',').include?('tue')
	end
	def days_tue=(day)
		add_or_remove_day_from_days(day, 'tue')
	end

	def days_wed
		true if days.to_s.split(',').include?('wed')
	end
	def days_wed=(day)
		add_or_remove_day_from_days(day, 'wed')
	end

	def days_thu
		true if days.to_s.split(',').include?('thu')
	end
	def days_thu=(day)
		add_or_remove_day_from_days(day, 'thu')
	end

	def days_fri
		true if days.to_s.split(',').include?('fri')
	end
	def days_fri=(day)
		add_or_remove_day_from_days(day, 'fri')
	end

	def days_sat
		true if days.to_s.split(',').include?('sat')
	end
	def days_sat=(day)
		add_or_remove_day_from_days(day, 'sat')
	end

	def days_sun
		true if days.to_s.split(',').include?('sun')
	end
	def days_sun=(day)
		add_or_remove_day_from_days(day, 'sun')
	end

	def add_or_remove_day_from_days(day_value, day_abbreviation)
		if day_value.to_i == 1
			self.days = (self.days.split(',') << day_abbreviation).flatten.uniq.join(',') rescue day_abbreviation
		else
			if self.days && self.days.include?(',')
				self.days = self.days.split(',')
			else 
				self.days = self.days.to_a
			end
			self.days.delete(day_abbreviation) if self.days.include?(day_abbreviation)
			self.days = self.days.join(',')
		end
	end

	def pretty_date(object)
		if self["#{object}"].class == Date
			self["#{object}"].strftime("%B %e, %Y")
		else
			Date.today.strftime("%B %e, %Y")
		end
	end

	DAYS = [
			{'full_name' => 'Monday', 'abbreviation' => 'Mon', 'order' => 1},
			{'full_name' => 'Tuesday', 'abbreviation' => 'Tue', 'order' => 2},
			{'full_name' => 'Wednesday', 'abbreviation' => 'Wed', 'order' => 3},
			{'full_name' => 'Thursday', 'abbreviation' => 'Thu', 'order' => 4},
			{'full_name' => 'Friday', 'abbreviation' => 'Fri', 'order' => 5},
			{'full_name' => 'Saturday', 'abbreviation' => 'Sat', 'order' => 6},
			{'full_name' => 'Sunday', 'abbreviation' => 'Sun', 'order' => 7}
	]

end

xml.instruct!
xml.data do
	@places.each do |place|
		xml.plplace do
			xml.open place.current_open_status_boolean
			xml.openCloseString place.current_open_status
			xml.name place.name
			xml.times do
				# Sort the Hour::DAYS array relative to the current day.
				hour_days = Hour::DAYS
				until hour_days[0]["order"] == Time.now.strftime("%u").to_i
					hour_days.push hour_days.shift
				end

				hour_days.each do |day|
					xml.day_of_week do
						xml.name day["full_name"]
						day_date = Date.today + hour_days.index(day).days
						xml.date day_date
						day_covered = false
						place.hours.each do |hour|
							if hour.start_date <= day_date && hour.end_date >= day_date && hour.days.include?(day["abbreviation"].downcase)
								xml.open_time hour.start_time.strftime("%r")
								xml.close_time hour.end_time.strftime("%r")
								day_covered = true
							end
						end
					end
				end
			end
			xml.building_id place.try(:building).try(:building_code)
			xml.latitude place.latitude
			xml.longitude place.longitude
			xml.location place.location
			xml.id place.id
		end
	end
end
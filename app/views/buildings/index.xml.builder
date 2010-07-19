xml.instruct!
xml.data do
	@buildings.each do |building|
		xml.TCBuilding do
			xml.name building.name
			xml.building_id building.building_code
			xml.building_numberic_id building.id
			xml.latitude building.latitude
			xml.longitude building.longitude
		end
	end
end
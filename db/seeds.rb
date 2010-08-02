# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#user = User.create(:login => 'administrator', :first_name => 'System', :last_name => 'Administrator', :password => 'sameday', :password_confirmation => 'sameday')
#user.groups << Group.find_or_create_by_name('administrator')
#user.save!

#Set Sample Places
Places.delete_all
[].each do |place|
  place = place.split('-')
  Place.create!([{:name => "#{place[0]}", :abbreviation => "#{place[1]}"}])
end

#Set Sample Events
Events.delete_all
[].each do |event|
  event = event.split('-')
  Event.create!([{:name => "#{event[0]}", :abbreviation => "#{event[1]}"}])
end

#Set LA Parishes
County.delete_all
['De Soto',
'Caddo',
'Bossier',
'Red River',
'Webster',
'Bienville',
'Claiborne',
'Lincoln',
'Jackson',
'Union',
'Ouachita',
'Caldwell',
'Morehouse',
'Richland',
'Franklin',
'West Carroll',
'East Carroll',
'Madison',
'Tensas',
'Sabine',
'Vernon',
'Beauregard',
'Natchitoches',
'Rapides',
'Winn',
'Grant',
'La Salle',
'Avoyelles',
'Catahoula',
'Concordia',
'Calcasieu',
'Cameron',
'Allen',
'Jefferson Davis',
'Evangeline',
'Acadia',
'Vermillion',
'St. Landry',
'Lafayette',
'St. Martin',
'Iberia',
'St. Mary',
'Assumption',
'Terrebonne',
'Lafourche',
'Pointe Coupee',
'Iberville',
'West Feliciana',
'West Baton Rouge',
'East Feliciana',
'East Baton Rouge',
'St. Helena',
'Livingston',
'Ascension',
'St. James',
'Tangipahoa',
'St. John The Baptist',
'St. Charles',
'Jefferson',
'Washington',
'St. Tammany',
'Orleans',
'St. Bernard',
'Plaquemines',].each do |county|
  County.create!([{:name => "#{county}"}])
end

# Set the states
State.delete_all
['ALABAMA-AL',
'ALASKA-AK',
'ARIZONA-AZ',
'ARKANSAS-AR',
'CALIFORNIA-CA',
'COLORADO-CO',
'CONNECTICUT-CT',
'DELAWARE-DE',
'DISTRICT OF COLUMBIA-DC',
'FLORIDA-FL',
'GEORGIA-GA',
'HAWAII-HI',
'IDAHO-ID',
'ILLINOIS-IL',
'INDIANA-IN',
'IOWA-IA',
'KANSAS-KS',
'KENTUCKY-KY',
'LOUISIANA-LA',
'MAINE-ME',
'MARYLAND-MD',
'MASSACHUSETTS-MA',
'MICHIGAN-MI',
'MINNESOTA-MN',
'MISSISSIPPI-MS',
'MISSOURI-MO',
'MONTANA-MT',
'NEBRASKA-NE',
'NEVADA-NV',
'NEW HAMPSHIRE-NH',
'NEW JERSEY-NJ',
'NEW MEXICO-NM',
'NEW YORK-NY',
'NORTH CAROLINA-NC',
'NORTH DAKOTA-ND',
'OHIO-OH',
'OKLAHOMA-OK',
'OREGON-OR',
'PENNSYLVANIA-PA',
'RHODE ISLAND-RI',
'SOUTH CAROLINA-SC',
'SOUTH DAKOTA-SD',
'TENNESSEE-TN',
'TEXAS-TX',
'UTAH-UT',
'VERMONT-VT',
'VIRGINIA-VA',
'WASHINGTON-WA',
'WEST VIRGINIA-WV',
'WISCONSIN-WI',
'WYOMING-WY'].each do |state|
  state = state.split('-')
  State.create!([{:name => "#{state[0]}", :abbreviation => "#{state[1]}"}])
end
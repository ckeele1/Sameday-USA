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

#Set Sample Events
Event.delete_all
['Lollapalooza--http://ww.artsbr.org/--true--true--None',
 'Earth Day--http://www.earthdaybr.org/--true--true--Baton Rouge Earth Day 2008 will feature fun, music, food and interactive education and exhibits. You can check out the music line-up at www.earthdaybr.org',
 'USS KIDD: Star-Spangled Celebration--http://www.usskidd.com/--true--true--Join us for food, fun, and fireworks at the USS KIDD celebrates Independence Day. The day starts off with food and drink booths opening at 12:00 noon, followed by live music, a mock air attack on the KIDD, and much more! Then wrap up the night with a spectacular fireworks display over the Mississippi River.',
 'Baton Rouge Arts Market-- --true--true--The Baton Rouge Arts Market is an open-air market and cultural event held on the first Saturday of the each month (excluding January & May) & the first 3 Saturdays in December from 8 a.m. until 12 noon. Located at 5th @ Main Street in downtown Baton Rouge, the Arts Market is held in conjunction with the weekly Red Stick Farmers Market and the 6-day-a-week Main Street Market and is a project of the Arts Council of Greater Baton Rouge.',
 'Battle of Jackson Crossroads--http://www.battleofjacksoncrossroads.org/--true--true--Civil War re-enactments. Park opens to spectators at 9 am Saturday and Sunday. Battle is set for 2:45 pm Satuday and at 1:45 pm Sunday. Friday is special demonstration for schools, and there will be a night barrage, way station, ladies\' tea and a Church service Sunday at 10 am. For more information visit www.battleofjacksoncrossroads.org.'].each do |event|
  event = event.split('--')
  Event.create!([{:name => "#{event[0]}", :url => "#{event[1]}", :open_status => event[2], :status => event[3], :description => "#{event[4]}"}])
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

Place.delete_all
['Barrow House Inn--9779 Royal Street--St Francisville--70775--http://www.topteninn.com/--true--true--Exquisite antiques and romance in heart of historic district. Circa 1809. Luxurious suites/rooms. 
Cassette walking tour. 
Choice of breakfast.',
'Churchill\'s Bar--7949 Jefferson Hwy--Baton Rouge--70809--http://batonrouge.unclewebster.com/lc/bus/1384/index.shtml--true--true--Baton Rouge\'s largest selection of fine wines, cigars and liquors. Featuring a store in front to purchase, and lounges in the back to indulge. Also visit Churchill\'s in the Atrium Restaurant & Cigar Bar open 7 days a week. Breakfast available until 11a',
'Belle of Baton Rouge--103 France St--Baton Rouge--70802--http://belleofbatonrouge.com/--true--true--Action is the Main Attraction at the Belle of
Baton Rouge Casino!

The three-deck riverboat casino features over 29,000 square feet of gaming area. This includes over 1,000 slots, video poker, keno machines and table games including live poker, blackJack, roulette, and craps. It\'s quite an experience!
From free admission, free parking and free valet service to complimentary cocktails, friendly waitresses and helpful dealers, you\'ll love the difference our "You Attitude" makes. It\'s all about helping you have fun!

Accomodations in the Sheraton Baton Rouge Convention Center Hotel. 

Restaurants include the Butler\'s Pantry, Bar102, Shucks on the Levee, and Atrium Buffet.',
'Andonie Museum--3828 W. Lakeshore Dr.--Baton Rouge--70808--http://www.AndonieMuseum.org/--true--true--See, hear, touch & smile as you explore the historic traditions of LSU sports. If you aren\'t a Tiger Fan now, you\'ll become one after this unique experience!',
'Courtyard by Marriott--2421 South Acadian Thruway--Baton Rouge--70808--http://www.marriott.com/btrch--true--true--None',
'Capital City Grill--3535 South Sherwood Forest Blvd--Baton Rouge--70816--http://www.capitalcitygrill.net/--true--true--Capital City Grill features upscale casual dining, a pleasing dining environment that doesn\'t require dressing up. The food is characterized as \'classic American\', with a menu that specializes in fresh fish, offering 2 or 3 seafood specials daily. Newest location is in The Shaw Center for the Arts downtown!',
'Mall of Louisiana--6401 Bluebonnet Blvd--Baton Rouge--70836--http://www.malloflouisiana.com/--true--true--Like no other! The largest, most glamorous new mall in the Southeast offers stunning decor, food court, carousel and a host of premier stores on two levels. Anchors: Macy\'s, Dillards, J.C. Penny, and Sears.'].each do |place|
  place = place.split('--')
  Place.create!([{:name => "#{place[0]}", :address => "#{place[1]}", :city => "#{place[2]}", :zipcode => "#{place[3]}", :url => "#{place[4]}", :open_status => place[5], :status => place[6], :description => "#{place[7]}"}])
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Continent.create!([
	{continent_name: "Australia"},
	{continent_name: "Asia-Pacific"},
	{continent_name: "Europe"},
	{continent_name: "Africa"},
	{continent_name: "Middle East"},
	{continent_name: "North America"},
	{continent_name: "South America"}
	])

Guide.create!([
	{title: "Hipster's 2013 Travel Guide to Sao Paulo", continent_id: 7,
		intro: "Bushwick sriracha locavore, raw denim Wes Anderson jean shorts mixtape messenger bag Marfa seitan pour-over YOLO 8-bit. Schlitz pour-over Etsy, literally sustainable sriracha banjo Cosby sweater banh mi cardigan. Artisan flexitarian before they sold out, asymmetrical selfies 8-bit lomo kogi gastropub banjo bespoke."}
	])

Itinerary.create!(
	[{title: "Samba Saturdays at O do Borogodo",image_url: "image1.jpg", user_id: 1, address: "Rua Pamplona, 795 - Jardim Paulista, São Paulo - SP, 01405-001, Brazil",
		guide_id: 1,
		entry: "Bushwick sriracha locavore, raw denim Wes Anderson jean shorts mixtape messenger bag Marfa seitan pour-over YOLO 8-bit."},
		{title: "PGPPP in Cooly", image_url: "image1.jpg", user_id: 2, address: 'Musgrave St, Coolanagatta',
			guide_id: 1,
			entry: "Onset of depression was about 2 weeks ago.  No stressor was able to be identified.  He started drinking progressively increasing amounts of alcohol everyday in public spaces like public toilets and shopping centres as he didn’t want to be drinking around his dad.  He quit his job as an assistant nurse which he had only been working for 2 weeks."}
			])

User.create!([
	{email: "bill@bill", password: "password", password_confirmation: "password"},
	{email: "phil@phil", password: "password", password_confirmation: "password"}
	])

Hint.create!([
	{entry: "Bushwick sriracha locavore, raw denim Wes Anderson jean shorts mixtape messenger bag Marfa seitan pour-over YOLO 8-bit.", itinerary_id: 1}, 
	{entry: "Bushwick sriracha locavore, raw denim Wes Anderson jean shorts mixtape messenger bag Marfa seitan pour-over YOLO 8-bit.", itinerary_id: 1},
	{entry: "Rip the ciabatta into medium-sized chunks and place", itinerary_id: 2},
	{entry: "tray with the chicken, tomatoes, basil, garlic cloves and olives.", itinerary_id: 2}
	])


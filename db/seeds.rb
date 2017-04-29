# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach("db/Global_Landslide_Catalog_Export.csv") do |row|
	Landslide.create(
		#id: row[0]
		date: row[1],
		time: row[2],
		country: row[3],
		nearest_places: row[4],
		hazard_type: row[5],
		landslide_type: row[6],
		trigger: row[7],
		storm_name: row[8],
		fatalities: row[9],
		injuries: row[10],
		source_name: row[11],
		source_link: row[12],
		location_description: row[13],
		location_accuracy: row[14],
		landslide_size: row[15],
		photos_link: row[16],
		cat_src: row[17],
		cat_id: row[18],
		countryname: row[19],
		near: row[20],
		distance: row[21],
		adminname1: row[22],
		adminname2: row[23],
		population: row[24],
		countrycode: row[25],
		continentcode: row[26],
		key: row[27],
		version: row[28],
		tstamp: row[29],
		changeset_id: row[30],
		latitude: row[31],
		longitude: row[32],
		geolocation: row[33]
		)

end
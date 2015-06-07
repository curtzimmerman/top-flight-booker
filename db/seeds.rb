# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

airports = Airport.create([{ code: "SFO" }, { code: "NYC" }])

flight = Flight.create({ flight_duration_in_seconds: 3000, start_location: Airport.find(1), destination: Airport.find(2), departure_time: 2.weeks.from_now })
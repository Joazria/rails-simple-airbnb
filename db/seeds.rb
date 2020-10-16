# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all
puts "Creating Fake Flats"
10.times do |i|
  Flat.create(
    name: Faker::Artist.name,
    address: Faker::Address.street_address,
    description: Faker::ChuckNorris.fact,
    price_per_night: [ 75, 100, 125].sample,
    number_of_guests: rand(1..5)
    )
  puts "Finished! restaurant #{ i + 1} created"
end



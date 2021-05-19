# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }
le_truffier = { name: "Le Truffier", address: "Somewhere in Paris", stars: 4 }
marios_place = { name: "Mario's Place", address: "Somehwere in Crete", stars: 3 }
bagatelle = { name: "Bagatelle", address: "Somehwere in Koln", stars: 5 }

50.times do
  Restaurant.create!(
    name: Faker::Food.dish,
    address: Faker::Address,
    phone_number: Faker::PhoneNumber,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end

# [dishoom, pizza_east].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end

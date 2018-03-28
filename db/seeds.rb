# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



  5.times do
    restaurant_name = "The #{Faker::ElderScrolls.creature}"
    restaurant_address = Faker::Address.street_address
    restaurant_category = ["chinese", "italian", "japanese", "french", "belgian"].sample
    restaurant = Restaurant.new(name: restaurant_name, address: restaurant_address, category: restaurant_category)
    restaurant.save
  end

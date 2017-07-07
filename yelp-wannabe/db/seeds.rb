# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Restaurant.create(
  name: "Papa John's",
  address: "123 First St",
  phone_number: "12347574",
  category: "american"
  )
puts "Added"
Restaurant.create(
  name: "Mcdonalds",
  address: "1234 First St",
  phone_number: "123475574",
  category: "american"
  )
puts "Added"

Restaurant.create(
  name: "Korean BBQ",
  address: "123 Second St",
  phone_number: "1562347574",
  category: "korean"
  )

puts "Added"

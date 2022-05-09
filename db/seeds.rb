# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NUM_OF_ITEMS = 10

Item.destroy_all()
NUM_OF_ITEMS.times do
  Item.create(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price,
    quantity: Faker::Number.between(from: 1, to: 10),
  )
end

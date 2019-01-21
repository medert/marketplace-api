# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product_list = [
  ["Vibe", 10, 1],
  ["Slipstream", 20, 0],
  ["Cascade", 30, 3],
  ["Expedition", 40, 0],
  ["Trident", 20, 4],
  ["Fishing", 20, 3]
]

product_list.each do |title, price, inventory_count|
  Product.create title: title, price: price, inventory_count: inventory_count
end

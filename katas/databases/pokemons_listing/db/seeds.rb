# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

florizarre = Pokemon.create!(name: 'Florizarre', number: 3)
herbizare = Pokemon.create!(name: 'Herbizarre', number: 2, evolution: florizarre)
bulbizarre = Pokemon.create!(name: 'Bulbizarre', number: 1, evolution: herbizare)

plant = Category.create(name: 'Plant')
poison = Category.create(name: 'Poison')

Pokemon.all.each do |pokemon|
  pokemon.categories << plant
  pokemon.categories << poison
end

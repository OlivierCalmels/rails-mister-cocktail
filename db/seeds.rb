# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

def ingredient_finder(name)
  puts name
  puts ing = Ingredient.find_by(name: name)
  return Ingredient.find_by(name: name)
end

# Ingrédients
# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients_serialized = open(url).read
# ingredients = JSON.parse(ingredients_serialized)
# ingredients["drinks"].each do |i|
#   # puts i["strIngredient1"]
#   Ingredient.create(name: i["strIngredient1"])
# end
puts 'Ingrédients importés'

 # Cocktails
p tgv = Cocktail.create!(name: "12h50")
p tgv.id
p Dose.create!(description: "2cl", ingredient_id: ingredient_finder("Dark rum"),  cocktail_id: tgv.id)

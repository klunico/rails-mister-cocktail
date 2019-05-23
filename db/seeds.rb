require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = open(url).read
result = JSON.parse(ingredients)

drinks = result["drinks"]

drinks.each do |drink|
 ingredient = drink["strIngredient1"]
 Ingredient.create(name: ingredient)
end

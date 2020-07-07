# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.create(name: "Cake", cooking_time: "3 hours", ingredients: "premix cake packet", method: "cook it in the oven")
Recipe.create(name: "Bread", cooking_time: "2 hours", ingredients: "flour and water and yeast", method: "Put it in the oven")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create(name: 'Ali')
# User.create(name: 'Michael')
# User.create(name: 'Test')

Food.create(name: "Apple", measurement_unit: "grams", price: 5.0, quantity: 1, user_id: 1)
Food.create(name: "Pineapple", measurement_unit: "grams", price: 1.0, quantity: 2, user_id: 1)
Food.create(name: "Chicken Breasts", measurement_unit: "units", price: 2.0, quantity: 5, user_id: 2)

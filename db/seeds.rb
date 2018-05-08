# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CategoryEvent.delete_all
ce01 = CategoryEvent.create!(name:'Youth Event')
ce02 = CategoryEvent.create!(name:'Church Event')
ce03 = CategoryEvent.create!(name:'Community Event')
ce04 = CategoryEvent.create!(name:'National Event')


CategoryCountry.delete_all
cc01 = CategoryCountry.create!(name:'United Kingdom')
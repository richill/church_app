# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CategoryCountry.delete_all
cc01 = CategoryCountry.create!(name:'United Kingdom')

CategoryEvent.delete_all
ce01 = CategoryEvent.create!(name:'Youth Event')
ce02 = CategoryEvent.create!(name:'Church Event')
ce03 = CategoryEvent.create!(name:'Community Event')
ce04 = CategoryEvent.create!(name:'National Event')
ce05 = CategoryEvent.create!(name:'Leadership Forum Event')
ce06 = CategoryEvent.create!(name:'Baptism Class Event')
ce07 = CategoryEvent.create!(name:'Bible Study Event')

CategoryJob.delete_all
cj01 = CategoryJob.create!(name:'Youth')
cj02 = CategoryJob.create!(name:'Youth')
cj03 = CategoryJob.create!(name:'Youth')
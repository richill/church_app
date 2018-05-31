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
cj01 = CategoryJob.create!(name:'Accountancy')
cj02 = CategoryJob.create!(name:'Accountancy (Qualified)')
cj03 = CategoryJob.create!(name:'Administrative, Secretarial, PA')
cj04 = CategoryJob.create!(name:'Banking & Finance')
cj05 = CategoryJob.create!(name:'Charity & Voluntary')
cj06 = CategoryJob.create!(name:'Construction, Trades & Property')
cj07 = CategoryJob.create!(name:'Customer Service')
cj08 = CategoryJob.create!(name:'Data Science & Analytics')
cj09 = CategoryJob.create!(name:'Design, Art & Creative')
cj10 = CategoryJob.create!(name:'Education & Training')
cj11 = CategoryJob.create!(name:'Energy')
cj12 = CategoryJob.create!(name:'Engineering & Architecture')
cj13 = CategoryJob.create!(name:'Estate Agency')
cj14 = CategoryJob.create!(name:'Financial Service & Insurance')
cj15 = CategoryJob.create!(name:'Health & Medicine')
cj16 = CategoryJob.create!(name:'Hospitality & Catering')
cj17 = CategoryJob.create!(name:'Fashion & Retail')
cj18 = CategoryJob.create!(name:'FMCG')
cj19 = CategoryJob.create!(name:'Human Resource')
cj20 = CategoryJob.create!(name:'IT Services Software')
cj21 = CategoryJob.create!(name:'IT Telecoms/Telecommunications')
cj22 = CategoryJob.create!(name:'Legal')
cj23 = CategoryJob.create!(name:'Leisure & Tourism')
cj24 = CategoryJob.create!(name:'Manufacturing')
cj25 = CategoryJob.create!(name:'Marketing & PR')
cj26 = CategoryJob.create!(name:'Media, Digital & Creative')
cj27 = CategoryJob.create!(name:'Motoring & Automotive')
cj28 = CategoryJob.create!(name:'Purchasing')
cj29 = CategoryJob.create!(name:'Recruitment Consultancy')
cj30 = CategoryJob.create!(name:'Sales')
cj31 = CategoryJob.create!(name:'Scientific')
cj32 = CategoryJob.create!(name:'Security, Safety & Uniformed Service')
cj33 = CategoryJob.create!(name:'Social Work & Social Care')
cj34 = CategoryJob.create!(name:'Strategy & Consultancy')
cj35 = CategoryJob.create!(name:'Transport & Logistics')
cj36 = CategoryJob.create!(name:'Writting')



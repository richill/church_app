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
cj05 = CategoryJob.create!(name:'Business Development')
cj06 = CategoryJob.create!(name:'Charity & Voluntary')
cj07 = CategoryJob.create!(name:'Construction, Trades & Property')
cj08 = CategoryJob.create!(name:'Customer Service')
cj09 = CategoryJob.create!(name:'Data Science & Analytics')
cj10 = CategoryJob.create!(name:'Design, Art & Creative')
cj11 = CategoryJob.create!(name:'Domestic Work')
cj12 = CategoryJob.create!(name:'Education & Training')
cj13 = CategoryJob.create!(name:'Energy')
cj14 = CategoryJob.create!(name:'Engineering & Architecture')
cj15 = CategoryJob.create!(name:'Estate Agency')
cj16 = CategoryJob.create!(name:'Financial Service & Insurance')
cj17 = CategoryJob.create!(name:'Health & Medicine')
cj18 = CategoryJob.create!(name:'Hospitality & Catering')
cj19 = CategoryJob.create!(name:'Fashion & Retail')
cj20 = CategoryJob.create!(name:'FMCG')
cj21 = CategoryJob.create!(name:'Human Resource')
cj22 = CategoryJob.create!(name:'IT Services Software')
cj23 = CategoryJob.create!(name:'IT Telecoms/Telecommunications')
cj24 = CategoryJob.create!(name:'Legal')
cj25 = CategoryJob.create!(name:'Leisure & Tourism')
cj26 = CategoryJob.create!(name:'Manufacturing')
cj27 = CategoryJob.create!(name:'Marketing & PR')
cj28 = CategoryJob.create!(name:'Media, Digital & Creative')
cj28 = CategoryJob.create!(name:'Motoring & Automotive')
cj30 = CategoryJob.create!(name:'Purchasing')
cj31 = CategoryJob.create!(name:'Project Management')
cj32 = CategoryJob.create!(name:'Recruitment Consultancy')
cj33 = CategoryJob.create!(name:'Sales')
cj34 = CategoryJob.create!(name:'Scientific')
cj35 = CategoryJob.create!(name:'Security, Safety & Uniformed Service')
cj36 = CategoryJob.create!(name:'Social Work & Social Care')
cj37 = CategoryJob.create!(name:'Strategy & Consultancy')
cj38 = CategoryJob.create!(name:'Transport & Logistics')
cj39 = CategoryJob.create!(name:'Writting')



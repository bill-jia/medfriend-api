# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

meds = Medication.create([{name: "Adderall", description: "For ADHD", open_alert: true, product_id: 1, openinterval: 24, reminder_on: 1}, {name: "Some pregnancy prevention thing", description: "Remember to take this", product_id: 2, openinterval: 24, reminder_on: 1}])

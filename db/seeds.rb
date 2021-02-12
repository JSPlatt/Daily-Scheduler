# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Bill=Doctor.create(name: "Bill", specialty: "Cardiology")
Hang=Doctor.create(name: "Hang", specialty: "Neurosurgeon")
Watson=Doctor.create(name: "Watson", specialty: "Pulmonology")
Sherlock=Doctor.create(name: "Sherlock", specialty: "ENT")
Cletus=Doctor.create(name: "Cletus", specialty: "Podiatry")

Judy=Nurse.create(name:"Judy")
Robert=Nurse.create(name:"Robert")
Hector=Nurse.create(name:"Hector")
Karen=Nurse.create(name:"Karen")
Jordan=Nurse.create(name:"Jordan")

Jessica = Patient.create(name:"Jessica", need:"Brain Tumor")
Charlotte = Patient.create(name:"Charlotte", need:"Plantar Fasciitis")
Emmett = Patient.create(name:"Emmett", need:"Pulmonary Enema")
Dave = Patient.create(name:"Dave", need:"Bypass")
Max = Patient.create(name:"Max", need: "Tonsilitis")

Room1=Room.create(number: 101)
Room2=Room.create(number: 102)
Room3=Room.create(number: 201)
Room4=Room.create(number: 202)
Room5=Room.create(number: 505)

####Update seeds#######
Surgery1 = Surgery.create(time:8.abs)
Surgery2 = Surgery.create(time:9.abs)
Surgery3 = Surgery.create(time:10.abs)
Surgery4 = Surgery.create(time:11.abs)
Surgery5 = Surgery.create(time:5.abs)

puts "Seeded"



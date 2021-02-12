# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


bill = Doctor.create(name: "Bill", specialty: "Cardiology")
hang = Doctor.create(name: "Hang", specialty: "Neurosurgeon")
watson = Doctor.create(name: "Watson", specialty: "Pulmonology")
sherlock = Doctor.create(name: "Sherlock", specialty: "ENT")
cletus = Doctor.create(name: "Cletus", specialty: "Podiatry")

judy = Nurse.create(name:"Judy")
robert = Nurse.create(name:"Robert")
hector = Nurse.create(name:"Hector")
karen = Nurse.create(name:"Karen")
jordan = Nurse.create(name:"Jordan")

jessica = Patient.create(name:"Jessica", need:"Brain Tumor")
charlotte = Patient.create(name:"Charlotte", need:"Plantar Fasciitis")
emmett = Patient.create(name:"Emmett", need:"Pulmonary Enema")
dave = Patient.create(name:"Dave", need:"Bypass")
max = Patient.create(name:"Max", need: "Tonsilitis")

room1 = Room.create(number: 101)
room2 = Room.create(number: 102)
room3 = Room.create(number: 201)
room4 = Room.create(number: 202)
room5 = Room.create(number: 505)

####Update seeds#######
surgery1 = Surgery.create(doctor_id: bill.id, nurse_id: judy.id, patient_id:dave.id, room_id: room1.id, time: 8)
surgery2 = Surgery.create(doctor_id: hang.id, nurse_id: robert.id, patient_id:jessica.id, room_id: room2.id, time: 12)
surgery3 = Surgery.create(doctor_id: watson.id, nurse_id: hector.id, patient_id:emmett.id, room_id: room3.id, time: 15)
surgery4 = Surgery.create(doctor_id: sherlock.id, nurse_id: karen.id, patient_id:max.id, room_id: room4.id, time: 13)
surgery5 = Surgery.create(doctor_id: cletus.id, nurse_id: jordan.id, patient_id:charlotte.id, room_id: room5.id, time: 10)

puts "Seeded"



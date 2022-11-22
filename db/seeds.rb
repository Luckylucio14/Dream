# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

Marie         = User.create!(first_name:"Marie" last_name:"Normand")
Luc        = User.create!(first_name:"Luc"   last_name:"Randriamanantseheno")
Vincent         = User.create!(first_name:"Vincent"  last_name:"Le Callonnec")
Ruben       = User.create!(first_name:"Ruben"   last_name:)

alice_flat_1 = Flat.create!(user: alice, ...)

Booking.create!(
  flat:        alice_flat_1,
  user:        bob,
  starting_on: "2022-11-22",
  ending_on:   "2022-11-24",
  status:      "pending"
)

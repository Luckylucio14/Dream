# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Star.destroy_all

alice        = User.create!(first_name: alice, last_name: pont )

alice_star_1 = Star.create!(,)

Booking.create!(
  star:        star1,
  user:        User2,
  starting_on: "2022-11-22",
  ending_on:   "2022-11-24",
  status:      "accepted"
)

Booking.create!(
  star:        star2,
  user:        User1,
  starting_on: "2022-11-22",
  ending_on:   "2022-11-25",
  status:      "pending"
)

Booking.create!(
  star:        star3,
  user:        User3,
  starting_on: "2022-11-24",
  ending_on:   "2022-11-25",
  status:      "decline"
)

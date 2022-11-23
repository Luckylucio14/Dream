# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"


puts 'Cleaning database...'
Booking.destroy_all
Star.destroy_all
User.destroy_all

puts 'Creating user...'

user1 = User.create!(first_name:"Hubert", last_name:"Farnsworth", email:"hubert.farnsworth@gmail.com", password:"kdsjgJB15$")
user2 = User.create!(first_name:"Ruben", last_name:"Hernandez", email:"ruruH1987@gmail.com", password:"halaMadrid!")
user3 = User.create!(first_name:"Emmett", last_name:"Brown", email:"emmett.brown@gmail.com", password:"Retourverslefutur1985!")
user4 = User.create!(first_name:"John", last_name:"Hammond", email:"john.hammond@wanadoo.fr", password:"Trex4ever!")

file = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/201a0f9a-2ea5-4b1e-a384-cd30528233e1/images.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221122%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221122T170433Z&X-Amz-Expires=86400&X-Amz-Signature=b73aacd1c0801ffd2ead03eab974dcda329b8c35844e5986886b1d4b9072c676&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22images.jpg%22&x-id=GetObject")
star1 = Star.create!(name:"Acrux", location:"Croix du Sud '63° 05 56,58/57 ", atmosphere: "climat froid ", capacity:" 10", price_per_night:"2500$", user: user1)

star1.photo.attach(io: file, filename: "star1.png", content_type: "image/png")

star2 =Star.create!(name:"Cajam",location:"+14° 01’59,755" "Omega Herculis", atmosphere:"climat tempéré ", capacity: "15 ", price_per_night:"2100$", user: user1)
star3 =Star.create!(name:"Céléno",location:"+24° 17 22,094″  Tauri", atmosphere:" climat tropical", capacity: "20", price_per_night:"3815$", user: user1)
star4 =Star.create!(name:"Diadème",location:"+17° 31 45,953″ Alpha_Comae_Berenices", atmosphere: " climat tropical ", capacity:"23 ", price_per_night:"3815$", user: user2)
star5 =Star.create!(name:"Electra",location:" +24° 06 48″ tauri", atmosphere:"climat désertique ", capacity: "25", price_per_night:"1960$", user: user2)
star6 =Star.create!(name:"Ferkad ",location:"+53° 41 41″ grande Ourse", atmosphere:"climat ÉQUATORIAL", capacity: "30", price_per_night:"1708$", user: user2)
star7 =Star.create!(name:"Gemma",location:"+26° 42 53″ Couronne boréale", atmosphere:"climat DE MONTAGNE", capacity: "32", price_per_night:"3850$", user: user2)
star8 =Star.create!(name:"Hydor ",location:"07° 34 46,557″  Verseau ", atmosphere:"CLIMAT DÉSERTIQUE ", capacity: "24", price_per_night:"6740$", user: user3)
star9 =Star.create!(name:"Izar ",location:"+27° 04 27,02″ Bouvier ", atmosphere: "CLIMAT POLAIRE ", capacity:" 26", price_per_night:"5875$", user: user3)
star10 =Star.create!(name:"Jabbah",location:"19° 27 38,3″ Scorpion ", atmosphere: "CLIMAT MÉDITÉRRANÉEN ", capacity:" 28", price_per_night:"109887$", user: user3)
star11 =Star.create!(name:" Kapella",location:"+45° 59 53″ Cocher", atmosphere: " CLIMAT OCÉANIQUE", capacity:"33 ", price_per_night:"5480$", user: user1)
star12 =Star.create!(name:"Menkib ",location:" +28° 04'58,0″  Pégase", atmosphere: " CLIMAT TROPICAL", capacity:" 35", price_per_night:" 3587$", user: user1)


Booking.create!(
star:        star1,
    user:        user2,
    arrival_date: "2022-11-22",
    departure_date:   "2022-11-24",
    status:      "accepted"
)
# Booking.create!(
#     star:        star2,
#     user:        user1,
#     arrival_date: "2022-11-22",
#     departure_date:   "2022-11-25",
#     status:      "pending"
# )
# Booking.create!(
#     star:        star3,
#     user:        user3,
#     arrival_date: "2022-11-24",
#     departure_date:   "2022-11-25",
#     status:      "declined"
# )

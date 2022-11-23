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
puts 'Creating stars...'
file = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/201a0f9a-2ea5-4b1e-a384-cd30528233e1/images.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221122%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221122T170433Z&X-Amz-Expires=86400&X-Amz-Signature=b73aacd1c0801ffd2ead03eab974dcda329b8c35844e5986886b1d4b9072c676&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22images.jpg%22&x-id=GetObject")
star1 = Star.create!(name:"Acrux", location:"Croix du Sud '63° 05 56,58/57 ", climate: "climat froid ", capacity:" 10", price_per_night:"2500$", user: user1)
star1.photo.attach(io: file, filename: "star1.png", content_type: "image/png")

file = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/fa1c011b-b4d8-402d-85dc-0f8ce9d96fad/template_primary.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221123%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221123T095905Z&X-Amz-Expires=86400&X-Amz-Signature=39bfeb5fedb882272a5a523e5bdef51f9cc5c752f283618aa6d80dc1c355b824&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22template_primary.jpg%22&x-id=GetObject")
star2 =Star.create!(name:"Cajam",location:"+14° 01’59,755" "Omega Herculis", climate:"climat tempéré ", capacity: "15 ", price_per_night:"2100$", user: user1)
star2.photo.attach(io: file, filename: "star2.png", content_type: "image/png")

file = URI.open("https://cdn.futura-sciences.com/sources/images/actu/supernova-vie-terre.jpeg")
star3 =Star.create!(name:"Céléno",location:"+24° 17 22,094″  Tauri", climate:" climat tropical", capacity: "20", price_per_night:"3815$", user: user1)
star3.photo.attach(io: file, filename: "star3.png", content_type: "image/png")

file = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/96af8ea5-e42e-4462-b3e2-6795e063e3ac/astronomie-c-est-quoi-la-nuit-des-etoiles_4721276.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221123%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221123T100601Z&X-Amz-Expires=86400&X-Amz-Signature=7af6bf86b105cea4f4a4f6b381ccc9e10ddce81e10646752a12b14ae07af3bbe&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22astronomie-c-est-quoi-la-nuit-des-etoiles_4721276.jpg%22&x-id=GetObject")
star4 =Star.create!(name:"Diadème",location:"+17° 31 45,953″ Alpha_Comae_Berenices", climate: " climat tropical ", capacity:"23 ", price_per_night:"3815$", user: user2)
star4.photo.attach(io: file, filename: "star4.png", content_type: "image/png")

file = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b4344289-8489-4161-8d32-8e5d0c9de37e/01_betelgeuse_eso0927e.adapt_.1900.1.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221123%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221123T100626Z&X-Amz-Expires=86400&X-Amz-Signature=ea3d56abe8cab691d34794a9692be8916de08e2b2071a2a46b9faab5c37a5ca1&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%2201_betelgeuse_eso0927e.adapt_.1900.1.jpg%22&x-id=GetObject")
star5 =Star.create!(name:"Electra",location:" +24° 06 48″ tauri", climate:"climat désertique ", capacity: "25", price_per_night:"1960$", user: user2)
star5.photo.attach(io: file, filename: "star5.png", content_type: "image/png")

file = URI.open("https://static01.nyt.com/images/2020/07/07/science/23SCI-OUTTHERE-LIGO/23SCI-OUTTHERE-LIGO-mobileMasterAt3x.jpg")
star6 =Star.create!(name:"Ferkad ",location:"+53° 41 41″ grande Ourse", climate:"climat ÉQUATORIAL", capacity: "30", price_per_night:"1708$", user: user2)
star6.photo.attach(io: file, filename: "star6.png", content_type: "image/png")

file = URI.open("https://epsilon.aeon.co/images/78ba87e7-7198-4468-81b5-500c505d5bc8/header_essay-gettyimages-1237093074.jpg")
star7 =Star.create!(name:"Gemma",location:"+26° 42 53″ Couronne boréale", climate:"climat DE MONTAGNE", capacity: "32", price_per_night:"3850$", user: user2)
star7.photo.attach(io: file, filename: "star7.png", content_type: "image/png")

file = URI.open("https://www.riken.jp/news-pubs-en/research-news-en/2020-research-en/RRFY20190049.jpg")
star8 =Star.create!(name:"Hydor ",location:"07° 34 46,557″  Verseau ", climate:"CLIMAT DÉSERTIQUE ", capacity: "24", price_per_night:"6740$", user: user3)
star8.photo.attach(io: file, filename: "star8.png", content_type: "image/png")

file = URI.open("https://imageio.forbes.com/blogs-images/startswithabang/files/2019/12/scaledown.jpg?format=jpg&width=960")
star9 =Star.create!(name:"Izar ",location:"+27° 04 27,02″ Bouvier ", climate: "CLIMAT POLAIRE ", capacity:" 26", price_per_night:"5875$", user: user3)
star9.photo.attach(io: file, filename: "star9.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1484589065579-248aad0d8b13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=459&q=80")
star10 =Star.create!(name:"Jabbah",location:"19° 27 38,3″ Scorpion ", climate: "CLIMAT MÉDITÉRRANÉEN ", capacity:" 28", price_per_night:"109887$", user: user3)
star10.photo.attach(io: file, filename: "star.10png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1656052564863-8ef68f491c38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80")
star11 =Star.create!(name:" Kapella",location:"+45° 59 53″ Cocher", climate: " CLIMAT OCÉANIQUE", capacity:"33 ", price_per_night:"5480$", user: user1)
star11.photo.attach(io: file, filename: "star11.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1614727187331-285522b20eaf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60")
star12 =Star.create!(name:"Menkib ",location:" +28° 04'58,0″  Pégase", climate: " CLIMAT TROPICAL", capacity:" 35", price_per_night:" 3587$", user: user1)
star12.photo.attach(io: file, filename: "star12.png", content_type: "image/png")

puts 'Creating booking...'
booking1 = Booking.create!(
star:        star1,
    user:        user2,
    arrival_date: "2022-11-22",
    departure_date:   "2022-11-24",
    status:      "accepted",
    total_price: "5000$"
)

booking2 = Booking.create!(
    star:        star2,
    user:        user1,
    arrival_date: "2022-11-22",
    departure_date:   "2022-11-25",
    status:      "pending",
    total_price: "6300$"
)

booking2 = Booking.create!(
  star:        star8,
  user:        user3,
  arrival_date: "2022-12-18",
  departure_date:   "2022-12-20",
  status:      "pending",
  total_price: "13480$"
)

booking3 = Booking.create!(
    star:        star3,
    user:        user3,
    arrival_date: "2022-11-24",
    departure_date:   "2022-11-25",
    status:      "declined",
    total_price: "3815$"
)

booking4 = Booking.create!(
  star:        star11,
  user:        user4,
  arrival_date: "2022-11-24",
  departure_date:   "2022-11-25",
  status:      "declined",
  total_price: "5480$"
)
booking5 = Booking.create!(
  star:        star12,
  user:        user4,
  arrival_date: "2022-11-22",
  departure_date:   "2022-11-26",
  status:      "declined",
  total_price: "14348$"
)
puts "finish"

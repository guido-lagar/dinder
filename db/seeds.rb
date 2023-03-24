require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

OptionChoice.destroy_all
Choice.destroy_all
Option.destroy_all
User.destroy_all

puts "creating user"
user1 = User.new(email: "olga@gmail.com", password: "123456qwerty")
user1.save!
user2 = User.new(email: "guido@gmail.com", password: "123456")
user2.save!

puts "user created"

puts "creating options"

option1 = Option.new(name: "La Mar", category: "Restaurant")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409729/LeMar_Peruvian_Restaurant_ajja66.jpg")
option1.photo.attach(io: photo, filename: "lamar.png", content_type: "image/jpg")
option1.save!
option2 = Option.new(name: "Taj Mahal", category: "Restaurant")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409730/Indian_Restaurant2_ize3m6.jpg")
option2.photo.attach(io: photo, filename: "tajmahal.png", content_type: "image/jpg")
option2.save!
option3 = Option.new(name: "Super Sushi", category: "Restaurant")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409731/Sushi_Restaurant_2_grnktm.jpg")
option3.photo.attach(io: photo, filename: "supersushi.png", content_type: "image/jpg")
option3.save!
option4 = Option.new(name: "Don Julio", category: "Restaurant")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409727/Steakhouse_2_weegsw.jpg")
option4.photo.attach(io: photo, filename: "donjulio.png", content_type: "image/jpg")
option4.save!
option5 = Option.new(name: "Mcdonalds", category: "Restaurant")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409727/McDonalds_Restaurant_2_b5wkxk.jpg")
option5.photo.attach(io: photo, filename: "mcdonalds.png", content_type: "image/jpg")
option5.save!
option6 = Option.new(name: "The Wine Bar", category: "Bar")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409725/Wine_Bar_b335hf.jpg")
option6.photo.attach(io: photo, filename: "thewinebar.png", content_type: "image/jpg")
option6.save!
option7 = Option.new(name: "Tequila Town", category: "Bar")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409727/Tequila_Bar2_jydgbd.jpg")
option7.photo.attach(io: photo, filename: "tequilatown.png", content_type: "image/jpg")
option7.save!
option8 = Option.new(name:"Fabulous Fernet", category: "Bar")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409727/Tequila_Bar2_jydgbd.jpg")
option8.photo.attach(io: photo, filename: "fabulousfernet.png", content_type: "image/jpg")
option8.save!
option9 = Option.new(name: "BeerMarket", category: "Bar")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409724/Beer_Market_Bar_sdzmc3.jpg")
option9.photo.attach(io: photo, filename: "beermarket.png", content_type: "image/jpg")
option9.save!
option10 = Option.new(name: "The Laundry", category: "Bar")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409731/Laundry_Bar_a9d1m4.jpg")
option10.photo.attach(io: photo, filename: "thelaundry.png", content_type: "image/jpg")
option10.save!
option11 = Option.new(name: "Ant-Man and the Wasp", category: "Movie")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679408662/ant-man_obq263.jpg")
option11.photo.attach(io: photo, filename: "antman.png", content_type: "image/jpg")
option11.save!
option12 = Option.new(name: "Cocaine Bear", category: "Movie")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679408660/Cocaine_Bear_yfvcph.jpg")
option12.photo.attach(io: photo, filename: "cocainebear.png", content_type: "image/jpg")
option12.save!
option13 = Option.new(name: "Scream VI", category: "Movie")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679408658/Scream_VI_pz15s7.jpg")
option13.photo.attach(io: photo, filename: "scream6.png", content_type: "image/jpg")
option13.save!
option14 = Option.new(name: "Creed III", category: "Movie")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679408665/Creed_III_xunmt9.jpg")
option14.photo.attach(io: photo, filename: "creediii.png", content_type: "image/jpg")
option14.save!
option15 = Option.new(name: "SHAZAM! FURY OF THE GODS", category: "Movie")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679408663/shazam_r3ofrd.jpg")
option15.photo.attach(io: photo, filename: "shazam.png", content_type: "image/jpg")
option15.save!
option16 = Option.new(name: "Museo de Arte Latinoamericano de Buenos Aires", category: "Museum")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409403/Museo_de_Arte_Latinoamericano_de_Buenos_Aires_a1rluc.jpg")
option16.photo.attach(io: photo, filename: "malba.png", content_type: "image/jpg")
option16.save!
option17 = Option.new(name: "Museo Nacional de Bellas Artes", category: "Museum")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409405/Museo_Nacional_de_Bellas_Artes_iyjvxu.png")
option17.photo.attach(io: photo, filename: "mnba.png", content_type: "image/jpg")
option17.save!
option18 = Option.new(name: "Museo Nacional de Arte Decorativo", category: "Museum")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409404/Museo_Nacional_de_Arte_Decorativo_sljgda.jpg")
option18.photo.attach(io: photo, filename: "mnad.png", content_type: "image/jpg")
option18.save!
option19 = Option.new(name: "Museo Historico Nacional del Cabildo y la Revolución de Mayo", category: "Museum")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409403/Museo_Hist%C3%B3rico_Nacional_del_Cabildo_y_la_Revoluci%C3%B3n_de_Mayo_pyag97.jpg")
option19.photo.attach(io: photo, filename: "mhncrm.png", content_type: "image/jpg")
option19.save!
option20 = Option.new(name: "Museo Moderno", category: "Museum")
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679409403/Museo_Moderno_d53mcq.jpg")
option20.photo.attach(io: photo, filename: "mm.png", content_type: "image/jpg")
option20.save!
puts "options created"

puts "creating choices"
choice1 = Choice.new(user_id: user1.id)
choice1.save!
choice2 = Choice.new(user_id: user2.id)
choice2.save!
puts "choices created"

puts "creating option/choices"
optchoice1 = OptionChoice.new(choice_id: choice1.id, option_id: option19.id)
optchoice1.save!
optchoice2 = OptionChoice.new(choice_id: choice1.id, option_id: option13.id)
optchoice2.save!
optchoice3 = OptionChoice.new(choice_id: choice1.id, option_id: option11.id)
optchoice3.save!
optchoice4 = OptionChoice.new(choice_id: choice1.id, option_id: option2.id)
optchoice4.save!
optchoice5 = OptionChoice.new(choice_id: choice1.id, option_id: option6.id)
optchoice5.save!
optchoice6 = OptionChoice.new(choice_id: choice2.id, option_id: option5.id)
optchoice6.save!
optchoice7 = OptionChoice.new(choice_id: choice2.id, option_id: option13.id)
optchoice7.save!
optchoice8 = OptionChoice.new(choice_id: choice2.id, option_id: option7.id)
optchoice8.save!
optchoice9 = OptionChoice.new(choice_id: choice2.id, option_id: option1.id)
optchoice9.save!
optchoice10 = OptionChoice.new(choice_id: choice2.id, option_id: option6.id)
optchoice10.save!
puts "option/choices created"

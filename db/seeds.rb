# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Choice.destroy_all
Option.destroy_all
User.destroy_all
user1 = User.new(email: "olga@gmail.com", password: "123456qwerty", name: "Oli")
user1.save!
option1 = Option.new(name: "La Mar", category: "Restaurant")
photo = URI.open("")
option1.save!
option2 = Option.new(name: "Taj Mahal", category: "Restaurant")
photo = URI.open("")
option2.save!
option3 = Option.new(name: "Super Sushi", category: "Restaurant")
photo = URI.open("")
option3.save!
option4 = Option.new(name: "Don Julio", category: "Restaurant")
photo = URI.open("")
option4.save!
option5 = Option.new(name: "Mcdonalds", category: "Restaurant")
photo = URI.open("")
option5.save!
option6 = Option.new(name: "The Wine Bar", category: "Bar")
photo = URI.open("")
option6.save!
option7 = Option.new(name: "Tequila Town", category: "Bar")
photo = URI.open("")
option7.save!
option8 = Option.new(name: "Fabulous Fernet", category: "Bar")
photo = URI.open("")
option8.save!
option9 = Option.new(name: "BeerMarket", category: "Bar")
photo = URI.open("")
option9.save!
option10 = Option.new(name: "The Laundry", category: "Bar")
photo = URI.open("")
option10.save!
option11 = Option.new(name: "Ant-Man and the Wasp", category: "Movie")
photo = URI.open("")
option11.save!
option12 = Option.new(name: "Cocaine Bear", category: "Movie")
photo = URI.open("")
option12.save!
option13 = Option.new(name: "Scream VI", category: "Movie")
photo = URI.open("")
option13.save!
option14 = Option.new(name: "Creed III", category: "Movie")
photo = URI.open("")
option14.save!
option15 = Option.new(name: "SHAZAM! FURY OF THE GODS", category: "Movie")
photo = URI.open("")
option15.save!
option16 = Option.new(name: "Museo de Arte Latinoamericano de Buenos Aires", category: "Museum")
photo = URI.open("")
option16.save!
option17 = Option.new(name: "Museo Nacional de Bellas Artes", category: "Museum")
photo = URI.open("")
option17.save!
option18 = Option.new(name: "Museo Nacional de Arte Decorativo", category: "Museum")
photo = URI.open("")
option18.save!
option19 = Option.new(name: "Museo Historico Nacional del Cabildo y la Revolución de Mayo", category: "Museum")
photo = URI.open("")
option19.save!
option20 = Option.new(name: "Museo Moderno", category: "Museum")
photo = URI.open("")
option20.save!

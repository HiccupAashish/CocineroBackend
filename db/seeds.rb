# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# # #   Character.create(name: 'Luke', movie: movies.first)
# # Bird.create(name: "Black-Capped Chickadee", species: "Poecile Atricapillus")
# # Bird.create(name: "Grackle", species: "Quiscalus Quiscula")
# # Bird.create(name: "Common Starling", species: "Sturnus Vulgaris")
# # Bird.create(name: "Mourning Dove", species: "Zenaida Macroura")

# bird_a = Bird.create(name: "Black-Capped Chickadee", species: "Poecile Atricapillus")
# bird_b = Bird.create(name: "Grackle", species: "Quiscalus Quiscula")
# bird_c = Bird.create(name: "Common Starling", species: "Sturnus Vulgaris")
# bird_d = Bird.create(name: "Mourning Dove", species: "Zenaida Macroura")

# location_a = Location.create(latitude: "40.730610", longitude: "-73.935242")
# location_b = Location.create(latitude: "30.26715", longitude: "-97.74306")
# location_c = Location.create(latitude: "45.512794", longitude: "-122.679565")

# sighting_a = Sighting.create(bird: bird_a, location: location_b)
# sighting_b = Sighting.create(bird: bird_b, location: location_a)
# sighting_c = Sighting.create(bird: bird_c, location: location_a)
# sighting_d = Sighting.create(bird: bird_d, location: location_c)
# sighting_e = Sighting.create(bird: bird_a, location: location_b)
# Chef.create!(name: "Shakaldev",password: "5683.Love",email: "shah22@gmail.com")
# User.create!(username: "Aashish",email: "shahaashish22@gmail.com",password:"5683.Love")
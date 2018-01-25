# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bet.destroy_all
Player.destroy_all
Bettor.destroy_all
Game.destroy_all
User.destroy_all
Winner.destroy_all


winner = Winner.new
winner.name = "Arques"
winner.surname = "Xavier"
winner.date = Date.today
url = "https://media-exp2.licdn.com/mpr/mpr/shrinknp_200_200/AAIA_wDGAAAAAQAAAAAAAAzOAAAAJDZlZTdmZmViLTA1YWEtNGI3NC1iN2JmLWE3NjEwMDg3OTE0OQ.jpg"
winner.remote_photo_url = url
winner.city= "Paris"
winner.batch = 100
winner.save!

User.create!(email: "lm.bonnefont@gmail.com", password: 123456)

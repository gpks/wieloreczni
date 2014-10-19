# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.delete_all
Rating.delete_all



munchkin = Game.create!(name: 'Munchkin', description: 'Gra w zabijanie potworów', genre: "karciana", game_id: nil, minplayer: 2, maxplayer: 6, minage: 8)
arkham = Game.create!(name: 'Horror w Arkham', description: 'Gra na podstawie prozy Lovecrafta', genre: "planszowa", game_id: nil, minplayer: 3, maxplayer: 5, minage: 12)
koncept = Game.create!(name: 'Koncept', description: 'Niewerbalne kalambury', genre: "planszowa", game_id: nil, minplayer: 2, maxplayer: 12, minage: 8)


rating_munchkin = Rating.create!(points: 8, review: "świetna", game_id: 1, user_id: 1)
rating_arkham = Rating.create!(points: 7, review: "świetna, bardzo długa", game_id: 2, user_id: 1)
rating_koncept = Rating.create!(points: 8, review: "znakomita zabawa", game_id: 3, user_id: 1)




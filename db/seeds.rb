# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create!(name: "Nick", email: "email@email.com", password: "password")

room = Room.create!(user_id: user.id, planet: "Mars", price: 50000, description: "Lovely orange hues and sweeping hills of dirt", total_occupancy: 12, total_bedrooms: 8, total_bathrooms: 6, home_type: "Cave System", section: "Lower Hemisphere")

RoomImage.create!(room_id: room.id, url: "https://universemagazine.com/wp-content/uploads/2022/05/fstinwtxeaqngou-768x568.jpg")

reservation = Reservation.create!(user_id: user.id, room_id: room.id, start_date: "July 17th, 2030", end_date: "August 12th, 2030", price: 50000)

Review.create!(reservation_id: reservation.id, rating: 3, comment: "Absolutely no water available but scenery was great")

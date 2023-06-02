# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create!(name: "Nick", email: "nick@test.com", password: "password")

room = Room.create!(user_id: user.id, planet: "Mars", price: 50000, description: "Lovely orange hues and sweeping hills of dirt", total_occupancy: 12, total_bedrooms: 8, total_bathrooms: 6, home_type: "Cave System", section: "Lower Hemisphere")

RoomImage.create!(room_id: room.id, url: "https://universemagazine.com/wp-content/uploads/2022/05/fstinwtxeaqngou-768x568.jpg")

reservation = Reservation.create!(user_id: user.id, room_id: room.id, start_date: "July 17th, 2030", end_date: "August 12th, 2030", price: 50000)

Review.create!(reservation_id: reservation.id, rating: 3, comment: "Absolutely no water available but scenery was great")

user = User.create!(name: "Stu", email: "stu@test.com", password: "password")

room = Room.create!(user_id: user.id, planet: "Vedriwei", price: 2000000, description: "Freezing cold temperatures, perfect for those who have ice cold hearts", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1, home_type: "Ice Pit", section: "Lower Hemisphere")

RoomImage.create!(room_id: room.id, url: "https://t4.ftcdn.net/jpg/05/63/71/89360_F_563718941_3IQJ9plkgdFWs0kIeZTLgWMIWtqyzsLL.jpg")

reservation = Reservation.create!(user_id: user.id, room_id: room.id, start_date: "May 14, 2042", end_date: "May 14, 2042", price: 2000000)

Review.create!(reservation_id: reservation.id, rating: 5, comment: "My year on planet Vedriwei was the best decision of my life. As I hate all other beings this planet was cold, isolating, and perfect. ")

user = User.create!(name: "Blarb", email: "Blarb@test.com", password: "password")

room = Room.create!(user_id: user.id, planet: "Cropirus", price: 40, description: "Extremely Windy. Rent with caution", total_occupancy: 10, total_bedrooms: 6, total_bathrooms: 1, home_type: "Ice Pit", section: "Lower Hemisphere")

RoomImage.create!(room_id: room.id, url: "https://www.weatherwizkids.com/wp-content/uploads/2015/04/sandstorm2.jpg")

reservation = Reservation.create!(user_id: user.id, room_id: room.id, start_date: "August 14, 3040", end_date: "August 20, 3040", price: 40)

Review.create!(reservation_id: reservation.id, rating: 1, comment: "This planet killed my family. Extreme wind that we did not take seriously. Luckily our species respawns fairly quickly. However, we did not have our spawning pad with us. Needless to say, hard to not die")

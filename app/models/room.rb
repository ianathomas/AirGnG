class Room < ApplicationRecord
  has_many :reservations
  has_many :room_images
  belongs_to :user
end

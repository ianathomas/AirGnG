class Room < ApplicationRecord
  has_many :reservation
  has_many :room_images
  belongs_to :user
end

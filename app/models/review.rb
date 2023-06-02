class Review < ApplicationRecord
  belongs_to :reservation
  validates :reservation_id, presence: true
  validates :rating, presence: true
   validates :comment, presence: true, length: { minimum: 10 }
end
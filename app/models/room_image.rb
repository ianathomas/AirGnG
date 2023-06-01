class RoomImage < ApplicationRecord
  belongs_to :room
  validates_format_of :url, :with => %r{\.(png|jpg|jpeg|gif)$}i, :message => "image must be png, jpg, or jpeg", multiline: true
end

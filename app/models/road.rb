class Road < ApplicationRecord
  has_many_attached :road_images
  has_many :comments
  belongs_to :user
end

class Road < ApplicationRecord
  has_many_attached :road_images
  belongs_to :user
end

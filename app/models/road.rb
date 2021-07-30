class Road < ApplicationRecord
  has_many_attached :road_images
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  belongs_to :user

  def liked_by?(user)
    likes.any?{ |like| like.user_id == user.id }
  end
end

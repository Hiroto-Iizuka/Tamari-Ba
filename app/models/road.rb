class Road < ApplicationRecord
  has_many_attached :road_images
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  belongs_to :user

  validates :latitude, :longitude, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 400 }

  def liked_by?(user)
    likes.any?{ |like| like.user_id == user.id }
  end
end

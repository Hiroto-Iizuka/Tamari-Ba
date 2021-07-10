class User < ApplicationRecord
  has_many :roads, dependent: :destroy
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :liked_roads, through: :likes, source: :road
  has_one_attached :avatar
  belongs_to :prefecture, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guest"
    end
  end
end

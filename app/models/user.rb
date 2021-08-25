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
  validate :validate_avatar

  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guest"
    end
  end

  private

  def validate_avatar
    return unless avatar.attached?
    if avatar.blob.byte_size > 5.megabytes
      errors.add(:avatar, ('は1つのファイル5MB以内にしてください'))
    elsif !image?
      errors.add(:avatar, ('はjpegまたはpng形式でアップロードしてください'))
    end
  end

  def image?
    %w[image/jpg image/jpeg image/png].include?(avatar.blob.content_type)
  end
end

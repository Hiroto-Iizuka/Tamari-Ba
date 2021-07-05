class Like < ApplicationRecord
  belongs_to :user
  belongs_to :road

  validates :user_id, uniqueness: {
    scope: :road_id,
    message: "は同じ投稿に2回以上いいねはできません",
  }
end

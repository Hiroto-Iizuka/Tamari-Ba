class AddLikesCountToRoads < ActiveRecord::Migration[6.1]
  def change
    add_column :roads, :likes_count, :integer, default: 0
  end
end

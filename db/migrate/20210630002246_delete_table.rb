class DeleteTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :road_images
    drop_table :roadimages
  end
end

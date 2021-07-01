class CreateRoadImages < ActiveRecord::Migration[6.1]
  def change
    create_table :road_images do |t|
      t.string :src
      t.references :road, null: false, foreign_key: true

      t.timestamps
    end
  end
end

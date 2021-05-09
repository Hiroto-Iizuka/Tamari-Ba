class CreateRoads < ActiveRecord::Migration[6.1]
  def change
    create_table :roads do |t|
      t.string :title
      t.float :origin_latitude
      t.float :origin_longitude
      t.float :via_latitude_1
      t.float :via_longitude_1
      t.float :via_latitude_2
      t.float :via_longitude_2
      t.float :via_latitude_3
      t.float :via_longitude_3
      t.float :via_latitude_4
      t.float :via_longitude_4
      t.float :via_latitude_5
      t.float :via_longitude_5
      t.float :via_latitude_6
      t.float :via_longitude_6
      t.float :via_latitude_7
      t.float :via_longitude_7
      t.float :via_latitude_8
      t.float :via_longitude_8
      t.float :destination_latitude
      t.float :destination_longitude
      t.text :description

      t.timestamps
    end
  end
end

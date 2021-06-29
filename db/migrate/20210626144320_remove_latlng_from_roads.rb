class RemoveLatlngFromRoads < ActiveRecord::Migration[6.1]
  def up
    remove_column :roads, :origin_latitude
    remove_column :roads, :origin_longitude
    remove_column :roads, :via_latitude_1
    remove_column :roads, :via_longitude_1
    remove_column :roads, :via_latitude_2
    remove_column :roads, :via_longitude_2
    remove_column :roads, :via_latitude_3
    remove_column :roads, :via_longitude_3
    remove_column :roads, :via_latitude_4
    remove_column :roads, :via_longitude_4
    remove_column :roads, :via_latitude_5
    remove_column :roads, :via_longitude_5
    remove_column :roads, :via_latitude_6
    remove_column :roads, :via_longitude_6
    remove_column :roads, :via_latitude_7
    remove_column :roads, :via_longitude_7
    remove_column :roads, :via_latitude_8
    remove_column :roads, :via_longitude_8
    remove_column :roads, :destination_latitude
    remove_column :roads, :destination_longitude
  end

  def down
    add_column :roads, :origin_latitude, :float
    add_column :roads, :origin_longitude, :float
    add_column :roads, :via_latitude_1, :float
    add_column :roads, :via_longitude_1, :float
    add_column :roads, :via_latitude_2, :float
    add_column :roads, :via_longitude_2, :float
    add_column :roads, :via_latitude_3, :float
    add_column :roads, :via_longitude_3, :float
    add_column :roads, :via_latitude_4, :float
    add_column :roads, :via_longitude_4, :float
    add_column :roads, :via_latitude_5, :float
    add_column :roads, :via_longitude_5, :float
    add_column :roads, :via_latitude_6, :float
    add_column :roads, :via_longitude_6, :float
    add_column :roads, :via_latitude_7, :float
    add_column :roads, :via_longitude_7, :float
    add_column :roads, :via_latitude_8, :float
    add_column :roads, :via_longitude_8, :float
    add_column :roads, :destination_latitude, :float
    add_column :roads, :destination_longitude, :float
  end
end



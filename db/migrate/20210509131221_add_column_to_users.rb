class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :age, :integer
    add_column :users, :gender, :integer
    add_column :users, :bike_type, :string
    add_column :users, :bike_name, :string
    add_column :users, :engine_size, :integer
    add_column :users, :experience_years, :integer
    add_column :users, :through, :bool
  end
end

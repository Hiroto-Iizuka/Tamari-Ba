class AddUserToRoads < ActiveRecord::Migration[6.1]
  def change
    add_reference :roads, :user, null: false, foreign_key: true, after: :id
  end
end

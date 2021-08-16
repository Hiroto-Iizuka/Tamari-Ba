# create_table "users", charset: "utf8mb4", force: :cascade do |t|
#   t.string "email", default: "", null: false
#   t.string "encrypted_password", default: "", null: false
#   t.string "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.string "name", default: "", null: false
#   t.integer "age"
#   t.integer "gender"
#   t.string "bike_type"
#   t.string "bike_name"
#   t.integer "engine_size"
#   t.integer "experience_years"
#   t.boolean "through"
#   t.boolean "admin", default: false
#   t.bigint "prefecture_id"
#   t.index ["email"], name: "index_users_on_email", unique: true
#   t.index ["prefecture_id"], name: "index_users_on_prefecture_id"
#   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
# end

require "csv"

class ImportCsv

  def self.import(path)
    list = []

    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    list
  end

  def self.user_data
    list = import('db/csv_data/user_data.csv')

    puts "インポート処理を開始"
    User.create!(list)
    puts "インポート完了！"
  end
end
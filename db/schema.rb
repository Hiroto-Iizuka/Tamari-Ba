# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_10_224823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "roads", force: :cascade do |t|
    t.string "title"
    t.float "origin_latitude"
    t.float "origin_longitude"
    t.float "via_latitude_1"
    t.float "via_longitude_1"
    t.float "via_latitude_2"
    t.float "via_longitude_2"
    t.float "via_latitude_3"
    t.float "via_longitude_3"
    t.float "via_latitude_4"
    t.float "via_longitude_4"
    t.float "via_latitude_5"
    t.float "via_longitude_5"
    t.float "via_latitude_6"
    t.float "via_longitude_6"
    t.float "via_latitude_7"
    t.float "via_longitude_7"
    t.float "via_latitude_8"
    t.float "via_longitude_8"
    t.float "destination_latitude"
    t.float "destination_longitude"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", default: "", null: false
    t.integer "age"
    t.integer "gender"
    t.string "bike_type"
    t.string "bike_name"
    t.integer "engine_size"
    t.integer "experience_years"
    t.boolean "through"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

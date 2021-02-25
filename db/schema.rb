# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_25_104357) do

  create_table "customers", force: :cascade do |t|
    t.string "full_name"
    t.string "age"
    t.string "aadhar_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "mobile"
  end

  create_table "histories", force: :cascade do |t|
    t.integer "customer_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "room_id", null: false
    t.index ["customer_id"], name: "index_histories_on_customer_id"
    t.index ["room_id"], name: "index_histories_on_room_id"
  end

  create_table "room_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "number"
    t.integer "room_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "status"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_rooms_on_customer_id"
    t.index ["room_type_id"], name: "index_rooms_on_room_type_id"
  end

  add_foreign_key "histories", "customers"
  add_foreign_key "histories", "rooms"
  add_foreign_key "rooms", "customers"
  add_foreign_key "rooms", "room_types"
end

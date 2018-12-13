# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181213185126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "biz_name", null: false
    t.integer "price", null: false
    t.string "address_1", null: false
    t.string "address_2"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zipcode", null: false
    t.float "lat", null: false
    t.float "lng", null: false
    t.integer "rating", null: false
    t.text "hours", null: false
    t.text "business_info", null: false
    t.string "phone_number"
    t.string "website"
    t.boolean "takes_reservations", default: false, null: false
    t.boolean "take_out", default: false, null: false
    t.boolean "delivery", default: false, null: false
    t.boolean "credit_card", default: false, null: false
    t.boolean "bike_parking", default: false, null: false
    t.boolean "free_wifi", default: false, null: false
    t.boolean "pets_allowed", default: false, null: false
    t.boolean "wheelchair_accessible", default: false, null: false
    t.boolean "good_for_kids", default: false, null: false
    t.boolean "good_for_groups", default: false, null: false
    t.boolean "outdoor_seating", default: false, null: false
    t.boolean "caters", default: false, null: false
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_1"], name: "index_businesses_on_address_1", unique: true
    t.index ["biz_name"], name: "index_businesses_on_biz_name"
    t.index ["city"], name: "index_businesses_on_city"
    t.index ["owner_id"], name: "index_businesses_on_owner_id"
    t.index ["state"], name: "index_businesses_on_state"
    t.index ["zipcode"], name: "index_businesses_on_zipcode"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "zipcode", null: false
    t.string "session_token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end

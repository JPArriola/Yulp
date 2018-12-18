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

ActiveRecord::Schema.define(version: 2018_12_18_190721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "businesses", force: :cascade do |t|
    t.string "biz_name", null: false
    t.string "address_1", null: false
    t.string "address_2"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zipcode", null: false
    t.float "lat", null: false
    t.float "lng", null: false
    t.integer "rating", null: false
    t.text "business_info", null: false
    t.string "phone_number"
    t.string "website"
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hours", array: true
    t.string "takes_reservations"
    t.string "take_out"
    t.string "delivery"
    t.string "credit_card"
    t.string "bike_parking"
    t.string "free_wifi"
    t.string "pets_allowed"
    t.string "wheelchair_accessible"
    t.string "good_for_kids"
    t.string "good_for_groups"
    t.string "outdoor_seating"
    t.string "caters"
    t.string "price"
    t.index ["address_1"], name: "index_businesses_on_address_1", unique: true
    t.index ["biz_name"], name: "index_businesses_on_biz_name"
    t.index ["city"], name: "index_businesses_on_city"
    t.index ["owner_id"], name: "index_businesses_on_owner_id"
    t.index ["state"], name: "index_businesses_on_state"
    t.index ["zipcode"], name: "index_businesses_on_zipcode"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "body", null: false
    t.integer "rating", null: false
    t.integer "biz_id", null: false
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_reviews_on_author_id"
    t.index ["biz_id"], name: "index_reviews_on_biz_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

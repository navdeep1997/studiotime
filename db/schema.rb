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

ActiveRecord::Schema.define(version: 2019_09_03_162448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "listing_id"
    t.date "booking_date"
    t.time "start_time"
    t.time "end_time"
    t.boolean "gov_id_on_arrival"
    t.boolean "studiotime_policy"
    t.text "booking_message"
    t.text "plan_to_use_studio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_bookings_on_listing_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.string "category"
    t.boolean "verified"
    t.float "ratings"
    t.string "studio_type"
    t.boolean "quick_replies"
    t.boolean "audio_engineer"
    t.string "photo_url"
    t.integer "minimum_booking"
    t.string "amenities"
    t.string "main_equipments"
    t.string "past_clients"
    t.string "audio_sample"
    t.string "studio_hours"
    t.text "studio_rule"
    t.text "studio_cancellation_policy"
    t.integer "verified_reviews"
    t.string "location"
    t.float "price_per_hour"
    t.float "studio_time_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "title"
    t.integer "convsersation_id"
    t.integer "sender_id"
    t.integer "receiver_id"
    t.boolean "read_receipient"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "title"
    t.integer "booking_id"
    t.float "final_amount"
    t.string "currency"
    t.string "confirmed_status"
    t.float "payment_confirmation"
    t.integer "payment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "user_id"
    t.string "cardholder_name"
    t.string "street_address"
    t.string "postal_code"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "cc_no"
    t.string "cc_validity"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "user_id"
    t.float "rate"
    t.integer "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "mobile"
    t.string "bio"
    t.boolean "verified_number"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "website_url"
    t.string "facebook_url"
    t.string "twitter_handle"
    t.string "instagram_handle"
    t.string "streaming_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "listings"
end

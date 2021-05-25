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

ActiveRecord::Schema.define(version: 2021_05_25_143344) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string "service_name"
    t.integer "guest_id"
    t.string "guest_email"
    t.string "guest_first_name"
    t.string "guest_last_name"
    t.string "guest_phone_numbers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_name", "guest_email"], name: "index_guests_on_service_name_and_guest_email", unique: true
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "guest_id"
    t.string "total_guests"
    t.string "adults"
    t.string "children"
    t.string "infants"
    t.string "nights"
    t.string "end_date"
    t.string "start_date"
    t.string "status"
    t.string "currency"
    t.string "payout_price"
    t.string "security_price"
    t.string "total_price"
    t.text "original_payload"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guest_id"], name: "index_reservations_on_guest_id"
  end

  add_foreign_key "reservations", "guests"
end

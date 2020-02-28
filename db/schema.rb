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

ActiveRecord::Schema.define(version: 2020_02_28_223010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ahoy_events", force: :cascade do |t|
    t.bigint "visit_id"
    t.bigint "user_id"
    t.string "name"
    t.jsonb "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["properties"], name: "index_ahoy_events_on_properties", opclass: :jsonb_path_ops, using: :gin
    t.index ["user_id"], name: "index_ahoy_events_on_user_id"
    t.index ["visit_id"], name: "index_ahoy_events_on_visit_id"
  end

  create_table "ahoy_messages", force: :cascade do |t|
    t.string "user_type"
    t.bigint "user_id"
    t.text "to"
    t.string "mailer"
    t.text "subject"
    t.datetime "sent_at"
    t.index ["user_type", "user_id"], name: "index_ahoy_messages_on_user_type_and_user_id"
  end

  create_table "ahoy_visits", force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.bigint "user_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.string "referring_domain"
    t.text "landing_page"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.string "country"
    t.string "region"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.string "app_version"
    t.string "os_version"
    t.string "platform"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_ahoy_visits_on_user_id"
    t.index ["visit_token"], name: "index_ahoy_visits_on_visit_token", unique: true
  end

  create_table "parties", force: :cascade do |t|
    t.integer "party_number"
    t.string "name"
    t.string "abbrevation"
    t.integer "candidates"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_parties_on_name"
    t.index ["party_number"], name: "index_parties_on_party_number", unique: true
  end

  create_table "subjects", force: :cascade do |t|
    t.bigint "party_id"
    t.integer "ballot_position"
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.integer "age"
    t.string "employment"
    t.string "city"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["age"], name: "index_subjects_on_age"
    t.index ["city"], name: "index_subjects_on_city"
    t.index ["employment"], name: "index_subjects_on_employment"
    t.index ["first_name", "last_name"], name: "index_subjects_on_first_name_and_last_name"
    t.index ["note"], name: "index_subjects_on_note"
    t.index ["party_id", "ballot_position"], name: "index_subjects_on_party_id_and_ballot_position", unique: true
    t.index ["party_id"], name: "index_subjects_on_party_id"
    t.index ["title"], name: "index_subjects_on_title"
  end

  create_table "territories", force: :cascade do |t|
    t.integer "region_code"
    t.string "region_name"
    t.integer "subregion_code"
    t.string "subregion_name"
    t.integer "district_code"
    t.string "district_name"
    t.integer "city_code"
    t.string "city_name"
    t.integer "zones"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "subjects", "parties"
end

# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161008230114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.date     "date"
    t.string   "exercises"
    t.string   "foods"
    t.string   "photos"
    t.string   "img_url"
    t.string   "data_type"
    t.string   "tag"
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calendars", ["challenge_id"], name: "index_calendars_on_challenge_id", using: :btree
  add_index "calendars", ["user_id"], name: "index_calendars_on_user_id", using: :btree

  create_table "challenges", force: :cascade do |t|
    t.string   "challenge_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "exercise_name"
    t.string   "data_type"
    t.string   "tag"
    t.integer  "challenge_id"
    t.integer  "user_id"
    t.integer  "calendar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exercises", ["calendar_id"], name: "index_exercises_on_calendar_id", using: :btree
  add_index "exercises", ["challenge_id"], name: "index_exercises_on_challenge_id", using: :btree
  add_index "exercises", ["user_id"], name: "index_exercises_on_user_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "food_name"
    t.date     "date"
    t.string   "data_type"
    t.string   "tag"
    t.integer  "challenge_id"
    t.integer  "user_id"
    t.integer  "calendar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foods", ["calendar_id"], name: "index_foods_on_calendar_id", using: :btree
  add_index "foods", ["challenge_id"], name: "index_foods_on_challenge_id", using: :btree
  add_index "foods", ["user_id"], name: "index_foods_on_user_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.date     "date"
    t.string   "data_type"
    t.string   "tag"
    t.integer  "challenge_id"
    t.integer  "user_id"
    t.integer  "calendar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["calendar_id"], name: "index_photos_on_calendar_id", using: :btree
  add_index "photos", ["challenge_id"], name: "index_photos_on_challenge_id", using: :btree
  add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.integer  "challenge_id"
    t.integer  "calendar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["calendar_id"], name: "index_users_on_calendar_id", using: :btree
  add_index "users", ["challenge_id"], name: "index_users_on_challenge_id", using: :btree

  add_foreign_key "exercises", "calendars"
  add_foreign_key "exercises", "challenges"
  add_foreign_key "exercises", "users"
  add_foreign_key "foods", "calendars"
  add_foreign_key "foods", "challenges"
  add_foreign_key "foods", "users"
  add_foreign_key "photos", "calendars"
  add_foreign_key "photos", "challenges"
  add_foreign_key "photos", "users"
  add_foreign_key "users", "calendars"
  add_foreign_key "users", "challenges"
end

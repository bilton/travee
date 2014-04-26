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

ActiveRecord::Schema.define(version: 20140426214010) do

  create_table "event_votes", force: true do |t|
    t.integer  "itinerary_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_votes", ["itinerary_id"], name: "index_event_votes_on_itinerary_id"
  add_index "event_votes", ["user_id"], name: "index_event_votes_on_user_id"

  create_table "guides", force: true do |t|
    t.string   "title"
    t.text     "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hint_votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "hint_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hint_votes", ["hint_id"], name: "index_hint_votes_on_hint_id"
  add_index "hint_votes", ["user_id"], name: "index_hint_votes_on_user_id"

  create_table "hints", force: true do |t|
    t.text     "entry"
    t.integer  "itinerary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hints", ["itinerary_id"], name: "index_hints_on_itinerary_id"

  create_table "itineraries", force: true do |t|
    t.text     "entry"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "address"
    t.string   "title"
    t.integer  "guide_id"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

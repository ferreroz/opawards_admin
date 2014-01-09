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

ActiveRecord::Schema.define(version: 20140109090712) do

  create_table "candidates", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "location"
    t.datetime "shooting_date"
    t.string   "equipment"
    t.string   "creator"
    t.integer  "phone_number"
    t.string   "email"
    t.float    "exp"
    t.string   "profession"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "winners", force: true do |t|
    t.integer  "candidate_id"
    t.datetime "publish_date"
    t.string   "judge"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
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

ActiveRecord::Schema.define(version: 20150122041704) do

  create_table "artists", force: true do |t|
    t.string   "name"
    t.string   "pic_url"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "record_label_id"
    t.integer  "genre_id"
  end

  create_table "genres", force: true do |t|
    t.string   "name"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "record_labels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", force: true do |t|
    t.string   "title"
    t.string   "track_link"
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id"
  end

end

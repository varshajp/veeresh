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

ActiveRecord::Schema.define(version: 20160216120055) do

  create_table "bookings", force: :cascade do |t|
    t.date     "day"
    t.time     "show"
    t.string   "type"
    t.integer  "number_of_seats"
    t.boolean  "t_c"
    t.integer  "cinema_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cinemas", force: :cascade do |t|
    t.string   "screen_name"
    t.string   "seat_name"
    t.string   "seat_type"
    t.string   "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "seating_comfort"
    t.string   "ac"
    t.string   "movie_audio_quality"
    t.string   "movie_video_output"
    t.string   "suggestion"
    t.string   "complaint"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "language"
    t.time     "duration"
    t.date     "release_date"
    t.integer  "cinema_id"
    t.integer  "review_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
  end

  create_table "online_bookings", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "imdb_rating"
    t.string   "times_of_india"
    t.string   "user_rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "veeresh_accounts", force: :cascade do |t|
    t.integer  "no_of_tickets_online"
    t.integer  "no_of_tickets_box"
    t.integer  "total_amt_per_day"
    t.integer  "booking_id"
    t.integer  "cinema_id"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end

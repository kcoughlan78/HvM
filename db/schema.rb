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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130524104527) do

  create_table "complaints", :force => true do |t|
    t.integer  "user_id"
    t.string   "location"
    t.text     "message"
    t.string   "offender"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "user_id"
    t.integer  "score"
    t.string   "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.string   "image_url"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "user_id"
    t.string   "user_email"
    t.string   "category"
    t.string   "image"
    t.integer  "view",       :default => 0
    t.text     "intro"
    t.text     "summary"
  end

  create_table "replies", :force => true do |t|
    t.string   "by"
    t.text     "response"
    t.integer  "post_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "user_email"
    t.integer  "user_id"
    t.string   "user_username"
  end

  add_index "replies", ["post_id"], :name => "index_replies_on_post_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tags", ["post_id"], :name => "index_tags_on_post_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "hashed_password"
    t.string   "salted_password"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "admin",           :default => false
    t.string   "username"
    t.string   "fname"
    t.string   "sname"
    t.text     "bio"
    t.string   "image"
    t.string   "suspended",       :default => "No"
  end

end

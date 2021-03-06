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

ActiveRecord::Schema.define(:version => 20211028142704) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "campgrounds", :force => true do |t|
    t.string   "name",        :null => false
    t.text     "description"
    t.string   "image"
    t.float    "price"
    t.integer  "user_id",     :null => false
    t.integer  "address_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "text",          :null => false
    t.integer  "user_id",       :null => false
    t.integer  "campground_id", :null => false
    t.integer  "parent_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                          :null => false
    t.string   "password",                       :null => false
    t.string   "image"
    t.date     "birthday"
    t.text     "description"
    t.text     "phone"
    t.boolean  "active",      :default => false, :null => false
    t.integer  "address_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

end

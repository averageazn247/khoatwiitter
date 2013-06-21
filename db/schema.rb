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

ActiveRecord::Schema.define(:version => 20130607200257) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "dayof"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "reminder"
    t.string   "emails"
    t.string   "creator"
    t.boolean  "sunday"
    t.boolean  "satday"
    t.boolean  "weekends"
    t.boolean  "daily"
    t.boolean  "weekdays"
    t.boolean  "weekly"
    t.boolean  "biweekly"
    t.boolean  "monthly"
    t.boolean  "yearly"
    t.boolean  "semiyearly"
    t.boolean  "quarterly"
    t.boolean  "monday"
    t.boolean  "tuesday"
    t.boolean  "wedsday"
    t.boolean  "thursday"
    t.boolean  "friday"
    t.boolean  "long"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "userid"
    t.integer  "eventid"
  end

  create_table "holidays", :force => true do |t|
    t.string   "creator"
    t.date     "date"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reminds", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "daily"
    t.boolean  "weekdays"
    t.boolean  "weekly"
    t.boolean  "biweekly"
    t.boolean  "monthly"
    t.boolean  "yearly"
    t.boolean  "semiyearly"
    t.boolean  "quarterly"
    t.boolean  "monday"
    t.boolean  "tuesday"
    t.boolean  "wedsday"
    t.boolean  "thursday"
    t.boolean  "friday"
    t.boolean  "sunday"
    t.boolean  "satday"
    t.boolean  "weekends"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.string   "password_confirmation"
    t.integer  "score"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                  :default => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "userid"
    t.string   "phone"
    t.string   "carrier"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

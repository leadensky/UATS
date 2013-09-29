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

ActiveRecord::Schema.define(version: 20130928173724) do

  create_table "employees", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lastName"
    t.string   "firstName"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_card_entries", force: true do |t|
    t.integer  "timecard_id"
    t.integer  "project_id"
    t.decimal  "mon"
    t.decimal  "tue"
    t.decimal  "wed"
    t.decimal  "thu"
    t.decimal  "fri"
    t.decimal  "sat"
    t.decimal  "sun"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  create_table "timecard_categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timecards", force: true do |t|
    t.integer  "employee_id"
    t.datetime "weekDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

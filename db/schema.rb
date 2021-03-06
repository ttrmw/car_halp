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

ActiveRecord::Schema.define(version: 20160901183252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.integer  "model_id"
    t.string   "url"
    t.string   "site"
    t.float    "price"
    t.boolean  "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "mileage"
    t.integer  "year"
  end

  create_table "flaws", force: :cascade do |t|
    t.integer  "model_id"
    t.integer  "mileage"
    t.string   "description"
    t.integer  "cost_estimate"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.date     "manufactured_from"
    t.date     "manufactured_until"
    t.float    "engine_size"
    t.integer  "doors"
    t.string   "trim"
    t.string   "body"
    t.integer  "fuel"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "manufacturer_id"
  end

end

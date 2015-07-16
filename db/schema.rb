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

ActiveRecord::Schema.define(version: 20150715135911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.string "type",        limit: 255
    t.string "name",        limit: 60
    t.string "description", limit: 512
    t.float  "rating"
    t.string "drink_type",  limit: 25
    t.float  "abv"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string  "name"
    t.float   "amount"
    t.integer "drink_id"
  end

  add_index "ingredients", ["drink_id"], name: "index_ingredients_on_drink_id", using: :btree

  add_foreign_key "ingredients", "drinks"
end

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

ActiveRecord::Schema.define(version: 20140715035840) do

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "manufacturer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_groups", force: true do |t|
    t.string   "name"
    t.string   "product_type"
    t.integer  "product_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promos", force: true do |t|
    t.text     "promo_type"
    t.datetime "end_date"
    t.integer  "stock_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", force: true do |t|
    t.integer  "parent_id"
    t.text     "name"
    t.text     "additional_text"
    t.decimal  "normal_price",                precision: 10, scale: 0
    t.string   "store_name"
    t.integer  "product_group_id"
    t.string   "status"
    t.integer  "brand_id"
    t.string   "packaging"
    t.integer  "units_of_item"
    t.string   "size"
    t.string   "halal_status"
    t.string   "halal_certification_issuer"
    t.string   "preservatives_status"
    t.string   "artificial_coloring_status"
    t.string   "artificial_flavoring_status"
    t.string   "food_conditioner_status"
    t.string   "artifical_sweetener_status"
    t.boolean  "returnable"
    t.string   "product_note"
    t.string   "internal_note"
    t.string   "product_price_group"
    t.string   "creator"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

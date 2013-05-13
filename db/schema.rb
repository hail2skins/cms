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

ActiveRecord::Schema.define(version: 20130513181032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "state",            limit: 2
    t.integer  "zip",              limit: 8
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id", unique: true, using: :btree

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "business_id"
    t.string   "referred_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone",       limit: 10
  end

  create_table "owners", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "owners", ["email"], name: "index_owners_on_email", unique: true, using: :btree
  add_index "owners", ["remember_token"], name: "index_owners_on_remember_token", using: :btree

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",       precision: 8, scale: 2
  end

  create_table "services_visits", force: true do |t|
    t.integer  "service_id", null: false
    t.integer  "visit_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services_visits", ["service_id", "visit_id"], name: "index_services_visits_on_service_id_and_visit_id", unique: true, using: :btree
  add_index "services_visits", ["service_id"], name: "index_services_visits_on_service_id", using: :btree
  add_index "services_visits", ["visit_id"], name: "index_services_visits_on_visit_id", using: :btree

  create_table "visits", force: true do |t|
    t.text     "visit_notes"
    t.date     "date_of_visit"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

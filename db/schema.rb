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

ActiveRecord::Schema.define(version: 20130829210951) do

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
    t.string   "middle_name"
  end

  create_table "customers_packages", force: true do |t|
    t.integer  "customer_id",    null: false
    t.integer  "package_id",     null: false
    t.date     "date_purchased"
    t.date     "date_completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers_packages", ["customer_id", "package_id"], name: "index_customers_packages_on_customer_id_and_package_id", unique: true, using: :btree
  add_index "customers_packages", ["customer_id"], name: "index_customers_packages_on_customer_id", using: :btree
  add_index "customers_packages", ["package_id"], name: "index_customers_packages_on_package_id", using: :btree

  create_table "gift_certs", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "value"
    t.text     "description"
    t.integer  "customer_id"
    t.integer  "redeemed"
    t.date     "date_redeemed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
    t.string   "middle_name"
  end

  add_index "owners", ["email"], name: "index_owners_on_email", unique: true, using: :btree
  add_index "owners", ["remember_token"], name: "index_owners_on_remember_token", using: :btree

  create_table "packages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "count"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.string   "number",         limit: 10
    t.integer  "phoneable_id"
    t.string   "phoneable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["phoneable_type", "phoneable_id"], name: "index_phones_on_phoneable_type_and_phoneable_id", using: :btree

  create_table "prices", force: true do |t|
    t.decimal  "amount",     precision: 8, scale: 2
    t.integer  "cost_id"
    t.string   "cost_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prices", ["cost_type", "cost_id"], name: "index_prices_on_cost_type_and_cost_id", unique: true, using: :btree

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services_packages", force: true do |t|
    t.integer  "service_id", null: false
    t.integer  "package_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services_packages", ["package_id"], name: "index_services_packages_on_package_id", using: :btree
  add_index "services_packages", ["service_id", "package_id"], name: "index_services_packages_on_service_id_and_package_id", unique: true, using: :btree
  add_index "services_packages", ["service_id"], name: "index_services_packages_on_service_id", using: :btree

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

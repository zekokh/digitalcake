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

ActiveRecord::Schema.define(version: 20170413152436) do

  create_table "orders", force: :cascade do |t|
    t.string   "id_order"
    t.string   "name_of_app"
    t.string   "id_of_app"
    t.string   "date"
    t.string   "the_theme"
    t.string   "the_shape"
    t.string   "price_per_kilogram"
    t.string   "weight"
    t.string   "difference_in_days_without_days_off"
    t.string   "difference_in_days_with_days_off"
    t.string   "floor"
    t.string   "price_for_shape_and_floor"
    t.string   "insription"
    t.string   "price_for_insription"
    t.string   "name_of_customer"
    t.string   "phone_of_customer"
    t.boolean  "there_is_delivery"
    t.string   "address"
    t.boolean  "exists_in_the_store"
    t.boolean  "exists_in_the_factory"
    t.boolean  "is_ready_cake"
    t.string   "ready_cake_time"
    t.boolean  "is_active"
    t.string   "time_of_creation"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "login"
    t.string   "role"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

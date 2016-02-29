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

ActiveRecord::Schema.define(version: 20160229005700) do

  create_table "airports", force: :cascade do |t|
    t.string   "code"
    t.integer  "arrivals_id"
    t.integer  "departures_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "airports", ["arrivals_id"], name: "index_airports_on_arrivals_id"
  add_index "airports", ["departures_id"], name: "index_airports_on_departures_id"

  create_table "flights", force: :cascade do |t|
    t.datetime "start"
    t.integer  "duration"
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "flights", ["destination_id"], name: "index_flights_on_destination_id"
  add_index "flights", ["origin_id", "destination_id"], name: "index_flights_on_origin_id_and_destination_id", unique: true
  add_index "flights", ["origin_id"], name: "index_flights_on_origin_id"

end

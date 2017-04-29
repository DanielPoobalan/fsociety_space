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

ActiveRecord::Schema.define(version: 20170429102424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "landslides", force: :cascade do |t|
    t.date     "date"
    t.string   "time"
    t.string   "country"
    t.string   "nearest_places"
    t.string   "hazard_type"
    t.string   "landslide_type"
    t.string   "trigger"
    t.string   "storm_name"
    t.integer  "fatalities"
    t.integer  "injuries"
    t.string   "source_name"
    t.string   "source_link"
    t.string   "location_description"
    t.string   "location_accuracy"
    t.string   "landslide_size"
    t.string   "photos_link"
    t.string   "cat_src"
    t.integer  "cat_id"
    t.string   "countryname"
    t.string   "near"
    t.decimal  "distance"
    t.string   "adminname1"
    t.string   "adminname2"
    t.string   "population"
    t.string   "countrycode"
    t.string   "continentcode"
    t.string   "key"
    t.integer  "version"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "changeset_id"
    t.decimal  "latitude",             precision: 10, scale: 6
    t.decimal  "longitude",            precision: 10, scale: 6
    t.string   "geolocation"
  end

end

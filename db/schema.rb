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

ActiveRecord::Schema.define(version: 20140311100704) do

  create_table "bundles", force: true do |t|
    t.string   "uid"
    t.text     "description"
    t.datetime "bundled_at"
    t.text     "bundle_errors"
    t.string   "environment"
    t.string   "firmware_revision"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "design_id"
  end

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designs", force: true do |t|
    t.string   "design_role"
    t.string   "design_type"
    t.string   "design_subtype"
    t.string   "connection_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20160130235854) do

  create_table "addresses", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "zip"
    t.string   "city"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "addresses", ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"

  create_table "applicants", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "slogan"
    t.date     "birthday"
    t.string   "family_status"
    t.string   "email"
    t.string   "mobile_phone"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "applications", force: :cascade do |t|
    t.string   "position"
    t.text     "letter"
    t.integer  "applicant_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "applications", ["applicant_id"], name: "index_applications_on_applicant_id"

  create_table "chronicle_item_skills", force: :cascade do |t|
    t.integer  "chronicle_item_id"
    t.integer  "skill_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "experience"
  end

  add_index "chronicle_item_skills", ["chronicle_item_id"], name: "index_chronicle_item_skills_on_chronicle_item_id"
  add_index "chronicle_item_skills", ["skill_id"], name: "index_chronicle_item_skills_on_skill_id"

  create_table "chronicle_items", force: :cascade do |t|
    t.date     "started_at"
    t.date     "ended_at"
    t.string   "title"
    t.text     "description"
    t.integer  "position"
    t.integer  "employment"
    t.string   "badge"
    t.boolean  "important"
    t.string   "type"
    t.string   "graduation"
    t.integer  "applicant_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "chronicle_items", ["applicant_id"], name: "index_chronicle_items_on_applicant_id"

  create_table "information", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "information_type", default: 0
    t.string   "type"
    t.integer  "informable_id"
    t.string   "informable_type"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "information", ["informable_type", "informable_id"], name: "index_information_on_informable_type_and_informable_id"

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.string   "type"
    t.integer  "linkable_id"
    t.string   "linkable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "links", ["linkable_type", "linkable_id"], name: "index_links_on_linkable_type_and_linkable_id"

end

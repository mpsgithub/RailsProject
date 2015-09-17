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

ActiveRecord::Schema.define(version: 20150917031800) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "subject_id"
    t.string   "image_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["subject_id"], name: "index_categories_on_subject_id"

  create_table "subcategories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.string   "image_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "subcategory_id"
    t.string   "video_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["subcategory_id"], name: "index_topics_on_subcategory_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.integer  "age"
    t.integer  "score"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20150120082522) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "contents", force: true do |t|
    t.string   "category"
    t.string   "title"
    t.text     "body"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designs", force: true do |t|
    t.string   "sitename"
    t.string   "email"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", force: true do |t|
    t.integer  "order"
    t.integer  "width"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "galleries", ["content_id"], name: "index_galleries_on_content_id"

  create_table "products", force: true do |t|
    t.integer  "stock"
    t.string   "name"
    t.integer  "serial"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "shipping"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "purchases", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "shipping"
    t.integer  "serial"
    t.string   "transactionn_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactionns", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "phone"
    t.string   "email"
    t.boolean  "success"
    t.boolean  "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stripe_token"
  end

  create_table "transactions", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "phone"
    t.string   "email"
    t.boolean  "success"
    t.boolean  "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
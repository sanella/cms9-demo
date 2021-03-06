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

ActiveRecord::Schema.define(version: 20161022211855) do

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_uid",                  null: false
    t.string   "data_name",                 null: false
    t.string   "data_mime_type"
    t.integer  "data_size"
    t.integer  "assetable_id"
    t.string   "assetable_type", limit: 30
    t.string   "type",           limit: 30
    t.integer  "data_width"
    t.integer  "data_height"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "cms9_events", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "post_definition_id"
    t.text     "user"
    t.string   "action"
    t.string   "deleted_field"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["post_definition_id"], name: "index_cms9_events_on_post_definition_id"
    t.index ["post_id"], name: "index_cms9_events_on_post_id"
  end

  create_table "cms9_fields", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "post_field_id"
    t.text     "value"
    t.text     "image"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["post_field_id"], name: "index_cms9_fields_on_post_field_id"
    t.index ["post_id"], name: "index_cms9_fields_on_post_id"
  end

  create_table "cms9_post_definitions", force: :cascade do |t|
    t.string   "name"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cms9_post_fields", force: :cascade do |t|
    t.integer  "post_definition_id"
    t.string   "name"
    t.string   "field_type"
    t.boolean  "required",           default: false, null: false
    t.string   "metadata"
    t.string   "user_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["post_definition_id"], name: "index_cms9_post_fields_on_post_definition_id"
  end

  create_table "cms9_posts", force: :cascade do |t|
    t.integer  "post_definition_id"
    t.string   "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["post_definition_id"], name: "index_cms9_posts_on_post_definition_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

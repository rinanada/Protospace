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

ActiveRecord::Schema.define(version: 20160728042908) do

  create_table "capture_images", force: :cascade do |t|
    t.integer  "type",         limit: 1,     default: 0, null: false
    t.integer  "prototype_id", limit: 4
    t.text     "content",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "capture_images", ["prototype_id"], name: "index_capture_images_on_prototype_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "prototype_id", limit: 4
    t.integer  "user_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comment_text", limit: 65535
  end

  add_index "comments", ["prototype_id"], name: "fk_rails_5a7b40847a", using: :btree
  add_index "comments", ["user_id"], name: "fk_rails_03de2dc08c", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "prototype_id", limit: 4
    t.integer  "user_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["prototype_id"], name: "fk_rails_8847d87628", using: :btree
  add_index "likes", ["user_id"], name: "fk_rails_1e09b5dabf", using: :btree

  create_table "prototypes", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "catch_copy",  limit: 65535
    t.text     "concept",     limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "likes_count", limit: 4,     default: 0
  end

  add_index "prototypes", ["title"], name: "index_prototypes_on_title", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",        limit: 4
    t.integer  "taggable_id",   limit: 4
    t.string   "taggable_type", limit: 255
    t.integer  "tagger_id",     limit: 4
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",           limit: 255
    t.integer "taggings_count", limit: 4,   default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "nickname",               limit: 255
    t.string   "pro_img",                limit: 255
    t.text     "profile",                limit: 65535
    t.string   "group",                  limit: 255
    t.string   "works",                  limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.text     "image_cache",            limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "capture_images", "prototypes"
  add_foreign_key "comments", "prototypes"
  add_foreign_key "comments", "users"
  add_foreign_key "likes", "prototypes"
  add_foreign_key "likes", "users"
end

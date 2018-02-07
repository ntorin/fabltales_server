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

ActiveRecord::Schema.define(version: 20180207011105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comment_likes", force: :cascade do |t|
    t.integer  "comment_id"
    t.integer  "user_id"
    t.boolean  "is_like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "story_id"
    t.integer  "user_id"
    t.boolean  "is_author"
    t.text     "message"
    t.integer  "like_count"
    t.integer  "dislike_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "conversation_messages", force: :cascade do |t|
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.text     "message"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "conversation_users", force: :cascade do |t|
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.string   "role"
    t.integer  "unread_count"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "is_group"
    t.text     "last_message"
    t.integer  "message_count"
    t.integer  "user_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "room_messages", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "user_id"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_users", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "user_id"
    t.boolean  "is_master"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "is_typing",  default: false
    t.boolean  "is_turn",    default: false
  end

  create_table "room_votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.integer  "room_user_id"
    t.string   "vote_type"
    t.boolean  "has_agreed"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "story_id"
    t.string   "name"
    t.boolean  "has_password"
    t.string   "password"
    t.integer  "word_limit"
    t.integer  "user_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "turn"
    t.integer  "user_limit"
    t.string   "room_type"
  end

  create_table "shop_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.text     "passage"
    t.boolean  "is_editing"
    t.boolean  "is_complete"
    t.integer  "like_count"
    t.integer  "view_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "comment_count"
    t.text     "prompt"
  end

  create_table "story_parts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "story_id"
    t.text     "part"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "story_users", force: :cascade do |t|
    t.integer  "story_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "identifier"
    t.string   "role",                   default: "user"
    t.string   "blurb"
    t.integer  "level",                  default: 1
    t.integer  "experience",             default: 0
    t.integer  "credits",                default: 0
    t.integer  "referral_count",         default: 0
    t.integer  "friend_count",           default: 0
    t.integer  "story_count",            default: 0
    t.integer  "comment_count",          default: 0
    t.integer  "story_view_count",       default: 0
    t.integer  "profile_view_count",     default: 0
    t.boolean  "accepted_tos",           default: false
    t.boolean  "verified",               default: false
    t.boolean  "is_banned",              default: false
    t.integer  "word_count",             default: 0
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["identifier"], name: "index_users_on_identifier", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

end

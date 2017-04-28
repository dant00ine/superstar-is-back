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

ActiveRecord::Schema.define(version: 20170428150559) do

  create_table "matches", force: :cascade do |t|
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "creator_id"
    t.integer  "result",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name"
    t.datetime "date"
    t.index ["creator_id"], name: "index_matches_on_creator_id"
    t.index ["team1_id"], name: "index_matches_on_team1_id"
    t.index ["team2_id"], name: "index_matches_on_team2_id"
  end

  create_table "signups", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_signups_on_team_id"
    t.index ["user_id"], name: "index_signups_on_user_id"
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "rebound"
    t.integer  "assist"
    t.integer  "blocks"
    t.integer  "steals"
    t.integer  "turn_overs"
    t.integer  "points"
    t.integer  "three_points"
    t.integer  "free_throws"
    t.integer  "level",        default: 0
    t.integer  "position",     default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_stats_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "auth_token",      default: ""
    t.index ["auth_token"], name: "index_users_on_auth_token", unique: true
  end

end

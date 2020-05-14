# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_14_194151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicants", force: :cascade do |t|
    t.string "name", null: false
    t.string "gpa", null: false
    t.integer "act"
    t.string "height", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.string "ppg"
    t.string "o_rebound"
    t.string "d_rebound"
    t.string "two"
    t.string "three"
    t.string "free_throw"
    t.string "assists"
    t.string "steals"
    t.string "turn_overs"
    t.string "blocks"
    t.string "minutes"
    t.string "status", default: "pending", null: false
    t.bigint "school_id", null: false
    t.bigint "position_id", null: false
    t.bigint "year_id", null: false
    t.index ["position_id"], name: "index_applicants_on_position_id"
    t.index ["school_id"], name: "index_applicants_on_school_id"
    t.index ["year_id"], name: "index_applicants_on_year_id"
  end

  create_table "cnotes", force: :cascade do |t|
    t.bigint "recruit_id", null: false
    t.bigint "user_id", null: false
    t.text "text", null: false
    t.string "date", null: false
    t.index ["recruit_id"], name: "index_cnotes_on_recruit_id"
    t.index ["user_id"], name: "index_cnotes_on_user_id"
  end

  create_table "funnels", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "mnotes", force: :cascade do |t|
    t.bigint "recruit_id", null: false
    t.text "text", null: false
    t.index ["recruit_id"], name: "index_mnotes_on_recruit_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "recruitfunnels", force: :cascade do |t|
    t.bigint "recruit_id", null: false
    t.bigint "funnel_id", null: false
    t.date "date"
    t.index ["funnel_id"], name: "index_recruitfunnels_on_funnel_id"
    t.index ["recruit_id"], name: "index_recruitfunnels_on_recruit_id"
  end

  create_table "recruits", force: :cascade do |t|
    t.string "name", null: false
    t.string "gpa", null: false
    t.integer "act"
    t.string "height", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.integer "basketball", null: false
    t.integer "academic", null: false
    t.string "ppg", null: false
    t.string "o_rebound", null: false
    t.string "d_rebound", null: false
    t.string "two", null: false
    t.string "three", null: false
    t.string "free_throw", null: false
    t.string "assists", null: false
    t.string "steals", null: false
    t.string "turn_overs", null: false
    t.string "blocks", null: false
    t.string "minutes", null: false
    t.bigint "school_id", null: false
    t.bigint "position_id", null: false
    t.bigint "funnel_id", null: false
    t.bigint "level_id", null: false
    t.bigint "year_id", null: false
    t.index ["funnel_id"], name: "index_recruits_on_funnel_id"
    t.index ["level_id"], name: "index_recruits_on_level_id"
    t.index ["position_id"], name: "index_recruits_on_position_id"
    t.index ["school_id"], name: "index_recruits_on_school_id"
    t.index ["year_id"], name: "index_recruits_on_year_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "city", null: false
    t.string "state", null: false
    t.string "coach", null: false
    t.string "phone", null: false
    t.string "zip"
  end

  create_table "searches", force: :cascade do |t|
    t.bigint "year_id"
    t.bigint "level_id"
    t.bigint "funnel_id"
    t.bigint "position_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "active", default: "active", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "years", force: :cascade do |t|
    t.integer "year", null: false
    t.boolean "active", null: false
  end

  add_foreign_key "taggings", "tags"
end

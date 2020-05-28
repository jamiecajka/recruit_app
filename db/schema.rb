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

ActiveRecord::Schema.define(version: 2020_05_28_143237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string "first_name", null: false
    t.string "gpa", default: "0"
    t.integer "act"
    t.string "height", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.string "basketball", default: "0", null: false
    t.string "academic", default: "0", null: false
    t.string "ppg", default: "0", null: false
    t.string "o_rebound", default: "0", null: false
    t.string "d_rebound", default: "0", null: false
    t.string "two", default: "0", null: false
    t.string "three", default: "0", null: false
    t.string "free_throw", default: "0", null: false
    t.string "assists", default: "0", null: false
    t.string "steals", default: "0", null: false
    t.string "turn_overs", default: "0", null: false
    t.string "blocks", default: "0", null: false
    t.string "minutes", default: "0", null: false
    t.bigint "school_id", null: false
    t.bigint "position_id", null: false
    t.bigint "funnel_id"
    t.bigint "level_id"
    t.bigint "year_id", null: false
    t.bigint "status_id", default: 2, null: false
    t.string "last_name", null: false
    t.index ["funnel_id"], name: "index_recruits_on_funnel_id"
    t.index ["level_id"], name: "index_recruits_on_level_id"
    t.index ["position_id"], name: "index_recruits_on_position_id"
    t.index ["school_id"], name: "index_recruits_on_school_id"
    t.index ["status_id"], name: "index_recruits_on_status_id"
    t.index ["year_id"], name: "index_recruits_on_year_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip"
    t.string "coach", null: false
    t.string "phone", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.bigint "year_id"
    t.bigint "level_id"
    t.bigint "funnel_id"
    t.bigint "position_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.bigint "status_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "status", default: "active", null: false
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
    t.string "key", default: ""
    t.boolean "superadmin_role"
    t.boolean "user_role", default: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "years", force: :cascade do |t|
    t.integer "year", null: false
    t.string "status", default: "active", null: false
  end

end

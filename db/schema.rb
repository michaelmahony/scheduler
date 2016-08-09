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

ActiveRecord::Schema.define(version: 20160804191829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.integer "firm_id"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email_address"
    t.string  "phone_number"
    t.float   "hourly_pay_rate"
    t.boolean "overtime_exempt"
    t.float   "overtime_multiplier"
    t.float   "lunch_duration"
    t.float   "max_hours_hard_limit"
    t.float   "hours_overtime_threshold"
    t.float   "mon_pref"
    t.float   "tue_pref"
    t.float   "wed_pref"
    t.float   "thu_pref"
    t.float   "fri_pref"
    t.float   "sat_pref"
    t.float   "sun_pref"
  end

  create_table "firms", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.time     "mon_open_time"
    t.time     "mon_close_time"
    t.time     "tue_open_time"
    t.time     "tue_close_time"
    t.time     "wed_open_time"
    t.time     "wed_close_time"
    t.time     "thu_open_time"
    t.time     "thu_close_time"
    t.time     "fri_open_time"
    t.time     "fri_close_time"
    t.time     "sat_open_time"
    t.time     "sat_close_time"
    t.time     "sun_open_time"
    t.time     "sun_close_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end

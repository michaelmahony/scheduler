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

ActiveRecord::Schema.define(version: 20160809032854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.date     "date"
    t.integer  "firm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

    t.integer 'mon_staff_target'
    t.integer 'mon_staff_min'
    t.integer 'mon_staff_max'

    t.integer 'tue_staff_target'
    t.integer 'tue_staff_min'
    t.integer 'tue_staff_max'

    t.integer 'wed_staff_target'
    t.integer 'wed_staff_min'
    t.integer 'wed_staff_max'

    t.integer 'thu_staff_target'
    t.integer 'thu_staff_min'
    t.integer 'thu_staff_max'

    t.integer 'fri_staff_target'
    t.integer 'fri_staff_min'
    t.integer 'fri_staff_max'

    t.integer 'sat_staff_target'
    t.integer 'sat_staff_min'
    t.integer 'sat_staff_max'

    t.integer 'sun_staff_target'
    t.integer 'sun_staff_min'
    t.integer 'sun_staff_max'

    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.date     "date"
    t.integer  "employee_id"
    t.integer  "day_id"
    t.boolean  "requested_off"
    t.boolean  "is_scheduled"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end

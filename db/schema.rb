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

ActiveRecord::Schema.define(version: 20170301221559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.string   "url"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "num_tas_needed"
    t.string   "meetup_id"
    t.integer  "credit_hours"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "email_sent",     default: false
    t.string   "pretty_time"
    t.string   "pretty_date"
  end

  create_table "hours", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "teaching_assistant_id"
    t.integer  "num"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "email_sent",            default: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teaching_assistants", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "private_id"
  end

end

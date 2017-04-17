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

ActiveRecord::Schema.define(version: 20170417191349) do

  create_table "call_status_updates", force: :cascade do |t|
    t.string "incoming_call_id"
    t.string "api_version"
    t.string "called"
    t.string "parent_call_sid"
    t.string "call_status"
    t.string "from"
    t.string "direction"
    t.string "timestamp"
    t.string "account_sid"
    t.string "callback_source"
    t.string "called_via"
    t.string "caller"
    t.string "sequence_number"
    t.string "call_sid"
    t.string "to"
    t.string "forwarded_from"
    t.string "to_state"
    t.string "caller_country"
    t.string "caller_state"
    t.string "to_zip"
    t.string "caller_zip"
    t.string "to_country"
    t.string "called_zip"
    t.string "called_city"
    t.string "call_duration"
    t.string "called_country"
    t.string "caller_city"
    t.string "from_country"
    t.string "to_city"
    t.string "from_city"
    t.string "called_state"
    t.string "from_zip"
    t.string "from_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incoming_call_id"], name: "index_call_status_updates_on_incoming_call_id"
  end

  create_table "incoming_calls", force: :cascade do |t|
    t.string "caller"
    t.string "caller_city"
    t.string "caller_state"
    t.string "caller_zip"
    t.string "caller_country"
    t.string "to"
    t.string "to_city"
    t.string "to_state"
    t.string "to_zip"
    t.string "to_country"
    t.string "called_city"
    t.string "called_state"
    t.string "called_zip"
    t.string "called_country"
    t.string "from"
    t.string "from_city"
    t.string "from_state"
    t.string "from_zip"
    t.string "from_country"
    t.string "call_status"
    t.string "called"
    t.string "call_sid"
    t.string "account_sid"
    t.string "to_sip"
    t.string "direction"
    t.date "api_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

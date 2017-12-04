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

ActiveRecord::Schema.define(version: 20171120132916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "assessments", force: :cascade do |t|
    t.integer "visit_id"
    t.json "history", default: {}
    t.json "examination", default: {}
    t.json "reports", default: {}
    t.json "vitals", default: {}
    t.json "advice", default: {}
    t.json "medication", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "locality"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "description"
    t.integer "hospital_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "specialization"
    t.string "degrees"
    t.string "gender"
    t.string "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "locality"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "pincode"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "salutation"
    t.string "name"
    t.string "gender"
    t.string "bloodgroup"
    t.string "street"
    t.string "locality"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "pincode"
    t.string "fathersname"
    t.string "nationality"
    t.integer "user_id"
    t.string "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.string "username"
    t.string "firstname"
    t.string "lastname"
    t.string "mobile"
    t.string "street"
    t.string "locality"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "role"
    t.string "aadharno"
    t.string "profile_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["mobile"], name: "index_users_on_mobile", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "visits", force: :cascade do |t|
    t.integer "clinic_id"
    t.integer "doctor_id"
    t.integer "patient_id"
    t.integer "age"
    t.float "weight"
    t.float "height"
    t.string "emergencycontact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "consultatnts", default: "[]"
    t.string "status", default: "Open"
  end

end

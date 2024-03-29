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

ActiveRecord::Schema.define(version: 20141002033250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "line_one"
    t.string   "line_two"
    t.string   "city"
    t.string   "county"
    t.integer  "postal_code"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "benefits", force: true do |t|
    t.date     "begin_date"
    t.string   "benefit_type"
    t.string   "coordination_of_benefits"
    t.boolean  "late_enrollment"
    t.string   "maintenance_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "benefits_coordinations", force: true do |t|
    t.string   "group_or_policy_number"
    t.string   "payer_responsibility"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "communication_number_one"
    t.string   "integer"
    t.string   "communication_type_one"
    t.integer  "communication_number_two"
    t.string   "communication_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordination_of_benefits", force: true do |t|
    t.string   "group_or_policy_number"
    t.string   "payer_responsibility"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordination_of_benefitses", force: true do |t|
    t.string   "group_or_policy_number"
    t.string   "payer_responsibility"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordination_of_benefitsses", force: true do |t|
    t.string   "group_or_policy_number"
    t.string   "payer_responsibility"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dependants", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "ssn"
    t.date     "birth_date"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payers", force: true do |t|
    t.string   "name"
    t.integer  "tax_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: true do |t|
    t.string   "name"
    t.integer  "tax_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: true do |t|
    t.string   "benefit_status"
    t.date     "birth_date"
    t.string   "contacts"
    t.date     "eligibility_begin_date"
    t.string   "employment_status"
    t.string   "first_name"
    t.string   "gender"
    t.string   "group_or_policy_number"
    t.boolean  "handicapped"
    t.string   "last_name"
    t.string   "maintenance_reason"
    t.string   "maintenance_type"
    t.string   "member_id"
    t.string   "middle_name"
    t.string   "relationship"
    t.integer  "ssn"
    t.string   "subscriber_number"
    t.boolean  "substance_abuse"
    t.boolean  "tobacco_use"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "widgets", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "widgets", ["user_id"], name: "index_widgets_on_user_id", using: :btree

end

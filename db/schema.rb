# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_11_12_124722) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "medical_tests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reference_ranges", force: :cascade do |t|
    t.integer "gender_related"
    t.integer "measure_unit"
    t.float "reference"
    t.bigint "medical_test_id", null: false
    t.integer "min_age"
    t.integer "min_age_kind"
    t.integer "max_age"
    t.integer "max_age_kind"
    t.integer "risk_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medical_test_id"], name: "index_reference_ranges_on_medical_test_id"
  end

  add_foreign_key "reference_ranges", "medical_tests"
end

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

ActiveRecord::Schema.define(version: 2018_08_25_202119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_types", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "Name"
    t.bigint "business_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_type_id"], name: "index_companies_on_business_type_id"
  end

  create_table "company_report_categories", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_company_report_categories_on_category_id"
    t.index ["company_id"], name: "index_company_report_categories_on_company_id"
  end

  create_table "district_areas", force: :cascade do |t|
    t.string "Name"
    t.integer "ZipCodeBegins"
    t.integer "ZipCodeEnds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "Name"
    t.text "Description"
    t.integer "PointsToRedeem"
    t.boolean "Enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "redeems", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_redeems_on_product_id"
    t.index ["user_id"], name: "index_redeems_on_user_id"
  end

  create_table "report_categories", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_parameter_data", force: :cascade do |t|
    t.string "Value"
    t.decimal "Longitude"
    t.decimal "Latitude"
    t.bigint "report_id"
    t.bigint "report_parameter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_report_parameter_data_on_report_id"
    t.index ["report_parameter_id"], name: "index_report_parameter_data_on_report_parameter_id"
  end

  create_table "report_parameters", force: :cascade do |t|
    t.string "Name"
    t.string "DataType"
    t.boolean "Optional"
    t.string "HtmlVisualization"
    t.bigint "report_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_type_id"], name: "index_report_parameters_on_report_type_id"
  end

  create_table "report_types", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.decimal "Longitude"
    t.decimal "Latitude"
    t.bigint "user_id"
    t.bigint "report_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_type_id"], name: "index_reports_on_report_type_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "upzs", force: :cascade do |t|
    t.string "Name"
    t.text "Georeference"
    t.bigint "district_area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_area_id"], name: "index_upzs_on_district_area_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer "UserCreatorId"
    t.bigint "user_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_user_profiles_on_profile_id"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "CellPhone"
    t.string "Username"
    t.string "Password"
    t.string "email"
    t.string "FirstName"
    t.string "LastName"
    t.string "Avatar"
    t.integer "Points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "companies", "business_types"
  add_foreign_key "company_report_categories", "categories"
  add_foreign_key "company_report_categories", "companies"
  add_foreign_key "redeems", "products"
  add_foreign_key "redeems", "users"
  add_foreign_key "report_parameter_data", "report_parameters"
  add_foreign_key "report_parameter_data", "reports"
  add_foreign_key "report_parameters", "report_types"
  add_foreign_key "reports", "report_types"
  add_foreign_key "reports", "users"
  add_foreign_key "upzs", "district_areas"
  add_foreign_key "user_profiles", "profiles"
  add_foreign_key "user_profiles", "users"
end

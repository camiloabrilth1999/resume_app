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

ActiveRecord::Schema.define(version: 20191008174244) do

  create_table "academic_modalities", force: :cascade do |t|
    t.string "description"
    t.string "resume_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "basic_middle_educations", force: :cascade do |t|
    t.integer "last_degree"
    t.string "degree_obtained"
    t.date "date_degree"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_basic_middle_educations_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string "charge_company"
    t.string "dependency"
    t.date "entry_date"
    t.date "retirement_date"
    t.boolean "current_job"
    t.integer "user_id"
    t.integer "enterprise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enterprise_id"], name: "index_employments_on_enterprise_id"
    t.index ["user_id"], name: "index_employments_on_user_id"
  end

  create_table "enterprise_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enterprises", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "number_phone"
    t.string "address"
    t.integer "city_id"
    t.integer "enterprisetype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_enterprises_on_city_id"
    t.index ["enterprisetype_id"], name: "index_enterprises_on_enterprisetype_id"
  end

  create_table "genders", force: :cascade do |t|
    t.string "description"
    t.string "resume_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idioms", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "military_card_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "military_cards", force: :cascade do |t|
    t.string "number"
    t.string "dm"
    t.integer "militarycardtype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["militarycardtype_id"], name: "index_military_cards_on_militarycardtype_id"
  end

  create_table "nacionality_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "national_identifier_types", force: :cascade do |t|
    t.string "description"
    t.string "resume_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocupation_experinces", force: :cascade do |t|
    t.integer "years"
    t.integer "months"
    t.integer "user_id"
    t.integer "ocupation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ocupation_id"], name: "index_ocupation_experinces_on_ocupation_id"
    t.index ["user_id"], name: "index_ocupation_experinces_on_user_id"
  end

  create_table "ocupations", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "user_academic_modalities", force: :cascade do |t|
    t.integer "number_approved_semesters"
    t.boolean "graduate"
    t.string "name_studies"
    t.date "date_completation_studie"
    t.string "number_professional_card"
    t.integer "user_id"
    t.integer "academicmodality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["academicmodality_id"], name: "index_user_academic_modalities_on_academicmodality_id"
    t.index ["user_id"], name: "index_user_academic_modalities_on_user_id"
  end

  create_table "user_idioms", force: :cascade do |t|
    t.string "to_speak"
    t.string "to_read"
    t.string "to_write"
    t.integer "user_id"
    t.integer "idiom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idiom_id"], name: "index_user_idioms_on_idiom_id"
    t.index ["user_id"], name: "index_user_idioms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_birth_id"
    t.integer "city_residence_id"
    t.integer "gender_id"
    t.integer "militarycard_id"
    t.integer "nacionalitiestype_id"
    t.integer "nationalidentifiertype_id"
    t.string "name"
    t.string "first_last_name"
    t.string "second_last_name"
    t.string "national_identifier_number"
    t.date "birth_date"
    t.string "country_nationality"
    t.string "address"
    t.index ["city_birth_id"], name: "index_users_on_city_birth_id"
    t.index ["city_residence_id"], name: "index_users_on_city_residence_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["gender_id"], name: "index_users_on_gender_id"
    t.index ["militarycard_id"], name: "index_users_on_militarycard_id"
    t.index ["nacionalitiestype_id"], name: "index_users_on_nacionalitiestype_id"
    t.index ["nationalidentifiertype_id"], name: "index_users_on_nationalidentifiertype_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end

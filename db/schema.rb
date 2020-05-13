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

ActiveRecord::Schema.define(version: 2020_04_26_131843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approval_types", force: :cascade do |t|
    t.string "option"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["option"], name: "index_approval_types_on_option", unique: true
  end

  create_table "genders", force: :cascade do |t|
    t.string "identity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["identity"], name: "index_genders_on_identity", unique: true
  end

  create_table "group_types", force: :cascade do |t|
    t.string "option"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["option"], name: "index_group_types_on_option", unique: true
  end

  create_table "groups", force: :cascade do |t|
    t.integer "sport_id", null: false
    t.string "name"
    t.text "description"
    t.string "profile_image"
    t.integer "approval_type_id", null: false
    t.integer "group_type_id", null: false
    t.boolean "has_skill_requirement"
    t.integer "skill_level_id", null: false
    t.boolean "has_max_capacity"
    t.bigint "max_capacity"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "post_code"
    t.boolean "is_private"
    t.boolean "is_active"
    t.boolean "is_banned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["approval_type_id"], name: "index_groups_on_approval_type_id"
    t.index ["group_type_id"], name: "index_groups_on_group_type_id"
    t.index ["skill_level_id"], name: "index_groups_on_skill_level_id"
    t.index ["sport_id"], name: "index_groups_on_sport_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.integer "role_id", null: false
    t.boolean "is_banned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_memberships_on_group_id"
    t.index ["role_id"], name: "index_memberships_on_role_id"
    t.index ["user_id", "group_id"], name: "index_memberships_on_user_id_and_group_id", unique: true
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_roles_on_name", unique: true
  end

  create_table "skill_levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_skill_levels_on_name", unique: true
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_sports_on_name", unique: true
  end

  create_table "user_sports", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "sport_id"
    t.integer "skill_level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skill_level_id"], name: "index_user_sports_on_skill_level_id"
    t.index ["sport_id"], name: "index_user_sports_on_sport_id"
    t.index ["user_id", "sport_id"], name: "index_user_sports_on_user_id_and_sport_id", unique: true
    t.index ["user_id"], name: "index_user_sports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "fname"
    t.string "lname"
    t.text "bio"
    t.date "dob"
    t.string "password_digest"
    t.integer "gender_id", null: false
    t.string "profile_image"
    t.string "city"
    t.string "post_code"
    t.datetime "last_active"
    t.boolean "is_private"
    t.boolean "is_active"
    t.boolean "is_banned"
    t.boolean "is_admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["gender_id"], name: "index_users_on_gender_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "groups", "approval_types"
  add_foreign_key "groups", "group_types"
  add_foreign_key "groups", "skill_levels"
  add_foreign_key "groups", "sports"
  add_foreign_key "memberships", "roles"
  add_foreign_key "user_sports", "skill_levels"
  add_foreign_key "users", "genders"
end

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

ActiveRecord::Schema.define(version: 20160925192541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cabinets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "brand_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.integer  "score",      default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.decimal  "quantity",      precision: 10, scale: 2
    t.boolean  "garnish"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "brand_id"
    t.string   "measurement"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "instructions"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "card_image"
    t.string   "photo_credit"
    t.string   "photo_credit_url"
  end

  create_table "timeline_drinks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "comment"
    t.string   "image"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "address"
    t.string   "city"
    t.string   "zip_code"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "timezone"
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "recipe_id"
  end

end

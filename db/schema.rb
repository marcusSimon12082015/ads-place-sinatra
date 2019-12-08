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

ActiveRecord::Schema.define(version: 2019_12_08_185052) do

  create_table "ads", force: :cascade do |t|
    t.text "description"
    t.float "price"
    t.integer "quantity"
    t.string "location"
    t.integer "condition_id"
    t.integer "category_id"
    t.integer "user_id"
    t.index ["category_id"], name: "index_ads_on_category_id"
    t.index ["condition_id"], name: "index_ads_on_condition_id"
    t.index ["user_id"], name: "index_ads_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "condition_name"
  end

  create_table "messages", force: :cascade do |t|
    t.text "text"
    t.string "sender_name"
    t.string "telephone_number"
    t.string "email"
    t.integer "ad_id"
    t.index ["ad_id"], name: "index_messages_on_ad_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
  end

end

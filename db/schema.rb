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

ActiveRecord::Schema.define(version: 2020_03_02_174349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyings", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_buyings_on_order_id"
    t.index ["product_id"], name: "index_buyings_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.string "state"
    t.integer "totalprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "color"
    t.string "size"
    t.integer "qty"
    t.bigint "store_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "selections", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_selections_on_product_id"
    t.index ["session_id"], name: "index_selections_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "productscategory"
    t.string "state"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.string "photo"
    t.string "title"
    t.date "date"
    t.time "starttime"
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "buyings", "orders"
  add_foreign_key "buyings", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "stores"
  add_foreign_key "selections", "products"
  add_foreign_key "selections", "sessions"
  add_foreign_key "sessions", "users"
  add_foreign_key "stores", "users"
end

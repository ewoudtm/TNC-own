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

ActiveRecord::Schema.define(version: 20170424180035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_negotiations", force: :cascade do |t|
    t.integer  "products_id"
    t.integer  "users_id"
    t.text     "single_bids", default: [],                array: true
    t.boolean  "active",      default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["products_id"], name: "index_product_negotiations_on_products_id", using: :btree
    t.index ["users_id"], name: "index_product_negotiations_on_users_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.integer  "start_price"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "image"
    t.string   "condition"
    t.text     "description"
    t.string   "size"
    t.boolean  "sold",        default: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "singlebids", force: :cascade do |t|
    t.integer  "price"
    t.boolean  "counter_offer"
    t.boolean  "accepted",                default: false
    t.integer  "product_negotiations_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["product_negotiations_id"], name: "index_singlebids_on_product_negotiations_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "product_negotiations", "products", column: "products_id"
  add_foreign_key "product_negotiations", "users", column: "users_id"
  add_foreign_key "products", "users"
  add_foreign_key "singlebids", "product_negotiations", column: "product_negotiations_id"
end

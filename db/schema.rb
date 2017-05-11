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

ActiveRecord::Schema.define(version: 20170426201249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "prod_negs", force: :cascade do |t|
    t.text     "single_bids", default: [],                array: true
    t.boolean  "active",      default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "product_id"
    t.integer  "user_id"
    t.index ["product_id"], name: "index_prod_negs_on_product_id", using: :btree
    t.index ["user_id"], name: "index_prod_negs_on_user_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.integer  "start_price"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image"
    t.string   "condition"
    t.text     "description"
    t.string   "size"
    t.boolean  "sold",           default: false
    t.integer  "user_id"
    t.string   "product_type"
    t.integer  "original_price"
    t.boolean  "accept_offers",  default: false
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "single_bids", force: :cascade do |t|
    t.integer  "prod_neg_id"
    t.integer  "price"
    t.boolean  "accepted",               default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "user_id"
    t.index ["prod_neg_id"], name: "index_single_bids_on_prod_neg_id", using: :btree
    t.index ["user_id"], name: "index_single_bids_on_user_id", using: :btree
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

  add_foreign_key "prod_negs", "products"
  add_foreign_key "prod_negs", "users"
  add_foreign_key "products", "users"
  add_foreign_key "single_bids", "prod_negs"
  add_foreign_key "single_bids", "users"
end

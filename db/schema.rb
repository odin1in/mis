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

ActiveRecord::Schema.define(version: 20150114225123) do

  create_table "admin_warehouses", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audits", force: :cascade do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         default: 0
    t.string   "comment"
    t.string   "remote_address"
    t.string   "request_uuid"
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], name: "associated_index"
  add_index "audits", ["auditable_id", "auditable_type"], name: "auditable_index"
  add_index "audits", ["created_at"], name: "index_audits_on_created_at"
  add_index "audits", ["request_uuid"], name: "index_audits_on_request_uuid"
  add_index "audits", ["user_id", "user_type"], name: "user_index"

  create_table "feedbacks", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "phone"
    t.text     "note"
    t.integer  "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "feedbacks", ["kind"], name: "index_feedbacks_on_kind"

  create_table "orders", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "user_id"
    t.integer  "qty"
    t.integer  "unit_price"
    t.integer  "total"
    t.integer  "status"
    t.string   "delivery_name"
    t.string   "delivery_address"
    t.string   "delivery_phone"
    t.string   "credit_card_number"
    t.string   "cvv"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "orders", ["product_id"], name: "index_orders_on_product_id"
  add_index "orders", ["status"], name: "index_orders_on_status"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "status"
    t.integer  "qoh"
    t.integer  "price"
    t.integer  "supplier_id"
    t.integer  "safety"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  add_index "products", ["price"], name: "index_products_on_price"
  add_index "products", ["qoh"], name: "index_products_on_qoh"
  add_index "products", ["safety"], name: "index_products_on_safety"
  add_index "products", ["status"], name: "index_products_on_status"

  create_table "purchases", force: :cascade do |t|
    t.integer  "supplier_id"
    t.integer  "product_id"
    t.integer  "cpu"
    t.integer  "qty"
    t.integer  "total"
    t.datetime "deliver_at"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "purchases", ["deliver_at"], name: "index_purchases_on_deliver_at"
  add_index "purchases", ["product_id"], name: "index_purchases_on_product_id"
  add_index "purchases", ["status"], name: "index_purchases_on_status"
  add_index "purchases", ["supplier_id"], name: "index_purchases_on_supplier_id"

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.integer  "role",                   default: 0,  null: false
    t.integer  "receive_dm"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["receive_dm"], name: "index_users_on_receive_dm"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role"], name: "index_users_on_role"

end

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

ActiveRecord::Schema.define(version: 20170917035755) do

  create_table "hay_fields", force: :cascade do |t|
    t.string   "field_name"
    t.integer  "bail_count"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.decimal  "price_per_ton",  precision: 16, scale: 2
    t.integer  "average_weight"
    t.integer  "cuts"
    t.boolean  "configured"
    t.decimal  "my_amount",      precision: 16, scale: 2
    t.decimal  "your_amount",    precision: 16, scale: 2
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "bill_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: :cascade do |t|
    t.decimal  "price"
    t.string   "description"
    t.integer  "quantity"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

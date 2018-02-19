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

ActiveRecord::Schema.define(version: 20180213191042) do

  create_table "circ_policy_groups", force: :cascade do |t|
    t.integer  "circ_group_id"
    t.string   "circ_group_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "circ_policy_matrices", force: :cascade do |t|
    t.integer "circ_group_id"
    t.integer "patron_group_id"
    t.integer "item_type_id"
    t.string  "charge_renew"
    t.string  "place_recall"
    t.string  "place_hold"
    t.string  "place_call_slip"
    t.string  "loan_interval"
    t.integer "loan_period"
    t.integer "circ_policy_matrix_id"
    t.index ["circ_group_id"], name: "index_circ_policy_matrices_on_circ_group_id"
    t.index ["item_type_id"], name: "index_circ_policy_matrices_on_item_type_id"
    t.index ["patron_group_id"], name: "index_circ_policy_matrices_on_patron_group_id"
  end

  create_table "item_types", force: :cascade do |t|
    t.integer  "item_type_id"
    t.string   "item_type_code"
    t.string   "item_type_name"
    t.string   "item_type_display"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "patron_groups", force: :cascade do |t|
    t.integer  "patron_group_id"
    t.string   "patron_group_code"
    t.string   "patron_group_name"
    t.string   "patron_group_display"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end

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

ActiveRecord::Schema.define(version: 0) do

  create_table "admin", id: false, force: :cascade do |t|
    t.integer "admin_id", limit: 4,   null: false
    t.string  "password", limit: 500, null: false
  end

  create_table "bidang", id: false, force: :cascade do |t|
    t.string "bidang_id",     limit: 500, null: false
    t.string "bidang_name",   limit: 500, null: false
    t.string "bidang_desc",   limit: 500, null: false
    t.float  "result_bidang", limit: 24,  null: false
    t.string "fac_id",        limit: 500, null: false
  end

  add_index "bidang", ["bidang_id"], name: "bidang_id", unique: true, using: :btree

  create_table "faculty", id: false, force: :cascade do |t|
    t.string  "fac_id",   limit: 500, null: false
    t.string  "fac_name", limit: 500, null: false
    t.integer "admin_id", limit: 4,   null: false
  end

  add_index "faculty", ["fac_id"], name: "fac_id", unique: true, using: :btree

  create_table "history", id: false, force: :cascade do |t|
    t.integer "history_id", limit: 4,   null: false
    t.integer "lec_id",     limit: 4,   null: false
    t.string  "bidang_id",  limit: 500, null: false
    t.string  "unjuran_id", limit: 500, null: false
    t.string  "fac_id",     limit: 500, null: false
    t.date    "year",                   null: false
  end

  add_index "history", ["history_id"], name: "history_id", unique: true, using: :btree

  create_table "lecturer", id: false, force: :cascade do |t|
    t.integer "lect_id",         limit: 4,   null: false
    t.string  "name",            limit: 500, null: false
    t.string  "state",           limit: 500, null: false
    t.string  "campus",          limit: 500, null: false
    t.string  "gred",            limit: 500, null: false
    t.integer "ATS_diff",        limit: 4,   null: false
    t.string  "committee",       limit: 500, null: false
    t.string  "trek",            limit: 500, null: false
    t.string  "office_admin",    limit: 500, null: false
    t.string  "academic",        limit: 500, null: false
    t.string  "position_status", limit: 500, null: false
    t.string  "result_lect",     limit: 500, null: false
    t.string  "fac_id",          limit: 500, null: false
  end

  add_index "lecturer", ["lect_id"], name: "lect_id", unique: true, using: :btree

  create_table "unjuran", id: false, force: :cascade do |t|
    t.integer "unjuran_id",     limit: 4,   null: false
    t.string  "fac_id",         limit: 500, null: false
    t.string  "stud_enrolment", limit: 500, null: false
    t.date    "year",                       null: false
    t.string  "result_unjuran", limit: 500, null: false
  end

  add_index "unjuran", ["unjuran_id"], name: "unjuran_id", unique: true, using: :btree

  create_table "workload", id: false, force: :cascade do |t|
    t.float "load_id",         limit: 24, null: false
    t.float "lec_id",          limit: 24, null: false
    t.float "ks_dip",          limit: 24, null: false
    t.float "ps_dip",          limit: 24, null: false
    t.float "ks_deg",          limit: 24, null: false
    t.float "ps_deg",          limit: 24, null: false
    t.float "total_deg",       limit: 24, null: false
    t.float "total_dip",       limit: 24, null: false
    t.float "ks_postgrade",    limit: 24, null: false
    t.float "ps_postgrade",    limit: 24, null: false
    t.float "total_postgrade", limit: 24, null: false
    t.float "k1",              limit: 24, null: false
    t.float "k2",              limit: 24, null: false
    t.float "k3",              limit: 24, null: false
    t.float "KTS",             limit: 24, null: false
    t.float "ATP",             limit: 24, null: false
  end

  add_index "workload", ["load_id"], name: "load_id", unique: true, using: :btree

end

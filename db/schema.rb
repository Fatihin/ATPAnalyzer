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

ActiveRecord::Schema.define(version: 20160514055336) do

  create_table "bidangs", force: :cascade do |t|
    t.string   "bidang_id",     limit: 255
    t.string   "bidang_name",   limit: 255
    t.string   "bidang_desc",   limit: 255
    t.string   "result_bidang", limit: 255
    t.string   "fac_id",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "fac_id",     limit: 255
    t.string   "fac_name",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "histories", force: :cascade do |t|
    t.string   "history_id", limit: 255
    t.integer  "lec_id",     limit: 4
    t.string   "bidang_id",  limit: 255
    t.string   "unjuran_id", limit: 255
    t.string   "fac_id",     limit: 255
    t.date     "year"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lecturers", force: :cascade do |t|
    t.integer  "lec_id",          limit: 4
    t.string   "name",            limit: 255
    t.string   "state",           limit: 255
    t.string   "campus",          limit: 255
    t.string   "gred",            limit: 255
    t.string   "ATS_diff",        limit: 255
    t.string   "committee",       limit: 255
    t.string   "trek",            limit: 255
    t.string   "office_admin",    limit: 255
    t.string   "academic",        limit: 255
    t.string   "position_status", limit: 255
    t.string   "result_lecturer", limit: 255
    t.integer  "fac_id",          limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "workloads", force: :cascade do |t|
    t.integer  "load_id",         limit: 4
    t.integer  "lec_id",          limit: 4
    t.integer  "ks_dip",          limit: 4
    t.integer  "ps_dip",          limit: 4
    t.integer  "ks_deg",          limit: 4
    t.integer  "ps_deg",          limit: 4
    t.integer  "total_dip",       limit: 4
    t.integer  "total_deg",       limit: 4
    t.integer  "ks_postgrade",    limit: 4
    t.integer  "ps_postgrade",    limit: 4
    t.integer  "total_postgrade", limit: 4
    t.integer  "k1",              limit: 4
    t.integer  "k2",              limit: 4
    t.integer  "k3",              limit: 4
    t.integer  "KTS",             limit: 4
    t.integer  "ATP",             limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end

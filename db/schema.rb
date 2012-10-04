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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121004222422) do

  create_table "destinations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "machines", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "sku"
    t.string   "picture"
    t.integer  "price"
    t.integer  "size_id"
    t.integer  "destination_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shifts", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "machine_id"
    t.integer  "product_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "timedowns", :force => true do |t|
    t.string   "description"
    t.integer  "shift_id"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "timeouts", :force => true do |t|
    t.integer  "shift_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "lastname_1"
    t.string   "lastname_2"
    t.date     "birthdate"
    t.string   "picture"
    t.string   "email"
    t.string   "password"
    t.integer  "gender_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "phone"
  end

end

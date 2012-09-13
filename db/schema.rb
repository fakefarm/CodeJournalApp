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

ActiveRecord::Schema.define(:version => 20120911233543) do

  create_table "goals", :force => true do |t|
    t.boolean  "completed"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "goals"
  end

  create_table "libraries", :force => true do |t|
    t.text     "to_read"
    t.text     "have_read"
    t.text     "to_watch"
    t.text     "have_watched"
    t.text     "to_view"
    t.text     "have_viewed"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "url"
  end

  create_table "questions", :force => true do |t|
    t.string   "question"
    t.string   "visibility"
    t.string   "topic"
    t.string   "size"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "project_id"
  end

  create_table "tasks", :force => true do |t|
    t.text     "description"
    t.text     "breadcrumb"
    t.boolean  "complete"
    t.string   "size"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "type_of_task"
    t.integer  "project_id"
  end

end

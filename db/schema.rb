# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100702133019) do

  create_table "buildings", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "building_code"
    t.text     "description"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "categories_places", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "place_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "name",              :limit => 40
    t.string   "authorizable_type", :limit => 40
    t.integer  "authorizable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours", :force => true do |t|
    t.date     "start_date"
    t.time     "start_time"
    t.date     "end_date"
    t.time     "end_time"
    t.string   "days"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.boolean  "open_status"
    t.boolean  "status"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "location"
    t.text     "description"
    t.string   "building_id"
    t.string   "owner"
    t.string   "menu_link"
    t.text     "payment_methods"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
    t.string   "aasm_state",             :default => "pending"
    t.string   "video_file_name_mobile"
    t.string   "owner_email_address"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :default => "", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "taggable_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "username",            :limit => 100, :default => "",   :null => false
    t.string   "first_name",          :limit => 100
    t.string   "last_name",           :limit => 100
    t.datetime "updated_at"
    t.datetime "created_at"
    t.string   "persistence_token"
    t.boolean  "active",                             :default => true
    t.string   "perishable_token",                   :default => "",   :null => false
    t.string   "single_access_token"
  end

  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"
  add_index "users", ["username"], :name => "index_users_on_username"

end

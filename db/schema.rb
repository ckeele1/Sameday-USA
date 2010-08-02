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

ActiveRecord::Schema.define(:version => 20100801194900) do

  create_table "alliance_members", :force => true do |t|
    t.string   "name"
    t.integer  "county_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alliance_members_emails", :force => true do |t|
    t.integer  "alliance_member_id"
    t.integer  "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alliance_members_hours", :force => true do |t|
    t.integer  "alliance_member_id"
    t.integer  "hour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alliance_members_numbers", :force => true do |t|
    t.integer  "alliance_member_id"
    t.integer  "number_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alliance_members_websites", :force => true do |t|
    t.integer  "alliance_member_id"
    t.integer  "website_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "counties", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupons_events", :force => true do |t|
    t.integer  "event_id"
    t.integer  "coupon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupons_places", :force => true do |t|
    t.integer  "place_id"
    t.integer  "coupon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "date_breaks", :force => true do |t|
    t.datetime "time_slot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "date_breaks_itineraries", :force => true do |t|
    t.integer  "itinerary_id"
    t.integer  "date_break_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails_events", :force => true do |t|
    t.integer  "event_id"
    t.integer  "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails_places", :force => true do |t|
    t.integer  "place_id"
    t.integer  "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "hour_range"
    t.string   "url"
    t.boolean  "open_status"
    t.boolean  "status"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "location"
    t.text     "description"
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_itineraries", :force => true do |t|
    t.integer  "itinerary_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_numbers", :force => true do |t|
    t.integer  "event_id"
    t.integer  "number_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_websites", :force => true do |t|
    t.integer  "event_id"
    t.integer  "website_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours_events", :force => true do |t|
    t.integer  "event_id"
    t.integer  "hour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours_places", :force => true do |t|
    t.integer  "place_id"
    t.integer  "hour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itineraries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itineraries_places", :force => true do |t|
    t.integer  "itinerary_id"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "numbers_places", :force => true do |t|
    t.integer  "place_id"
    t.integer  "number_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "url"
    t.boolean  "open_status"
    t.boolean  "status"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "location"
    t.text     "description"
    t.string   "owner"
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

  create_table "places_websites", :force => true do |t|
    t.integer  "place_id"
    t.integer  "website_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :default => "", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
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

  create_table "user_activities", :force => true do |t|
    t.integer  "user_id"
    t.string   "model_name"
    t.integer  "model_id"
    t.string   "controller_action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",               :limit => 100, :default => "",   :null => false
    t.string   "first_name",          :limit => 100
    t.string   "last_name",           :limit => 100
    t.datetime "updated_at"
    t.datetime "created_at"
    t.string   "persistence_token"
    t.boolean  "active",                             :default => true
    t.string   "perishable_token",                   :default => "",   :null => false
    t.string   "crypted_password",                                     :null => false
    t.string   "password_salt",                                        :null => false
    t.integer  "login_count",                        :default => 0,    :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.string   "single_access_token"
  end

  add_index "users", ["last_request_at"], :name => "index_users_on_last_request_at"
  add_index "users", ["login"], :name => "index_users_on_login"
  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"

end

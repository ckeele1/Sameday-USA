class AddUsersTable < ActiveRecord::Migration
  def self.up
	  create_table "users", :force => true do |t|
	    t.string   "username",          :limit => 100, :default => "",   :null => false
	    t.string   "first_name",        :limit => 100
	    t.string   "last_name",         :limit => 100
	    t.datetime "updated_at"
	    t.datetime "created_at"
	    t.string   "persistence_token"
	    t.boolean  "active",                           :default => true
	    t.string   "perishable_token",                 :default => "",   :null => false
	  end

	  add_index "users", ["username"], :name => "index_users_on_username"
	  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"
  end

  def self.down
		drop_table :users
  end
end

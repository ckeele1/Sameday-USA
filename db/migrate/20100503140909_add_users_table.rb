class AddUsersTable < ActiveRecord::Migration
  def self.up
	  create_table "users", :force => true do |t|
	    t.string   "login",          :limit => 100, :default => "",   :null => false
	    t.string   "first_name",        :limit => 100
	    t.string   "last_name",         :limit => 100
	    t.datetime "updated_at"
	    t.datetime "created_at"
	    t.string   "persistence_token"
	    t.boolean  "active",                           :default => true
	    t.string   "perishable_token",                 :default => "",   :null => false
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.integer :login_count, :default => 0, :null => false
      t.datetime :last_request_at
      t.datetime :last_login_at
      t.datetime :current_login_at
      t.string :last_login_ip
      t.string :current_login_ip
	  end

	  add_index :users, :login
	  add_index :users, :perishable_token
	  add_index :users, :last_request_at
  end

  def self.down
		drop_table :users
  end
end

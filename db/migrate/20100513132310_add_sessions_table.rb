class AddSessionsTable < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
      t.string :session_id, :default => "", :null => false
      t.text :data
	    t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end

class CreateEventsWebsites < ActiveRecord::Migration
  def self.up
    create_table :events_websites do |t|
      t.integer :event_id
      t.integer :website_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events_websites
  end
end

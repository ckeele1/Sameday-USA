class CreateEventsHours < ActiveRecord::Migration
  def self.up
    create_table :events_hours do |t|
      t.integer :event_id
      t.integer :hour_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events_hours
  end
end

class CreateHoursEvents < ActiveRecord::Migration
  def self.up
    create_table :hours_events do |t|
      t.integer :event_id
      t.integer :hour_id

      t.timestamps
    end
  end

  def self.down
    drop_table :hours_events
  end
end

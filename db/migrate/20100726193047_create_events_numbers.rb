class CreateEventsNumbers < ActiveRecord::Migration
  def self.up
    create_table :events_numbers do |t|
      t.integer :event_id
      t.integer :number_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events_numbers
  end
end

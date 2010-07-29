class CreateEventsItineraries < ActiveRecord::Migration
  def self.up
    create_table :events_itineraries do |t|
      t.integer :itinerary_id
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events_itineraries
  end
end

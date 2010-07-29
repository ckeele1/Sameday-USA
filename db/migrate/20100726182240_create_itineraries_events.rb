class CreateItinerariesEvents < ActiveRecord::Migration
  def self.up
    create_table :itineraries_events do |t|
      t.integer :itinerary_id
      t.integer :place_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itineraries_events
  end
end

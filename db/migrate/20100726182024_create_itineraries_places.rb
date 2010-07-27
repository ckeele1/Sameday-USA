class CreateItinerariesPlaces < ActiveRecord::Migration
  def self.up
    create_table :itineraries_places do |t|
      t.integer :itinerary_id
      t.integer :place_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itineraries_places
  end
end

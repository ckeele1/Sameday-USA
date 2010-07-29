class CreateItinerariesSegments < ActiveRecord::Migration
  def self.up
    create_table :itineraries_segments do |t|
      t.integer :itinerary_id
      t.integer :segment_id
      t.string :segment_model

      t.timestamps
    end
  end

  def self.down
    drop_table :itineraries_segments
  end
end

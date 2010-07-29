class CreateDateBreaksItineraries < ActiveRecord::Migration
  def self.up
    create_table :date_breaks_itineraries do |t|
      t.integer :itinerary_id
      t.integer :date_break_id

      t.timestamps
    end
  end

  def self.down
    drop_table :date_breaks_itineraries
  end
end

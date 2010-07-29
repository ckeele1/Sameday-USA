class CreateItinerariesDateBreaks < ActiveRecord::Migration
  def self.up
    create_table :itineraries_date_breaks do |t|
      t.integer :itinerary_id
      t.integer :date_break_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itineraries_date_breaks
  end
end

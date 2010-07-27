class CreatePlacesHours < ActiveRecord::Migration
  def self.up
    create_table :places_hours do |t|
      t.integer :place_id
      t.integer :hour_id

      t.timestamps
    end
  end

  def self.down
    drop_table :places_hours
  end
end

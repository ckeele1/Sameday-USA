class CreateHoursPlaces < ActiveRecord::Migration
  def self.up
    create_table :hours_places do |t|
      t.integer :place_id
      t.integer :hour_id

      t.timestamps
    end
  end

  def self.down
    drop_table :hours_places
  end
end

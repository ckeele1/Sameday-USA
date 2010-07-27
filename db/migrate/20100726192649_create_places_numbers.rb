class CreatePlacesNumbers < ActiveRecord::Migration
  def self.up
    create_table :places_numbers do |t|
      t.integer :place_id
      t.integer :number_id

      t.timestamps
    end
  end

  def self.down
    drop_table :places_numbers
  end
end

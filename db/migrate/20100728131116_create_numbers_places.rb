class CreateNumbersPlaces < ActiveRecord::Migration
  def self.up
    create_table :numbers_places do |t|
      t.integer :place_id
      t.integer :number_id

      t.timestamps
    end
  end

  def self.down
    drop_table :numbers_places
  end
end

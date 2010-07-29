class CreatePlacesWebsites < ActiveRecord::Migration
  def self.up
    create_table :places_websites do |t|
      t.integer :place_id
      t.integer :website_id

      t.timestamps
    end
  end

  def self.down
    drop_table :places_websites
  end
end

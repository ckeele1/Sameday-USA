class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :url
      t.string :hour_range
      t.string :url
      t.boolean :open_status
      t.boolean :status
      t.float :longitude
      t.float :latitude
      t.string :location
      t.text :description
      t.string :owner

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end

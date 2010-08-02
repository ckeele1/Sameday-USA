class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zipcode
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
    drop_table :places
  end
end

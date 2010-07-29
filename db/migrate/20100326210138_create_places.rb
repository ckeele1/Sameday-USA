class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :name
      t.string :url
      t.boolean :open_status
      t.boolean :status
      t.float :longitude
      t.float :latitude
      t.string :location
      t.text :description
      t.string :owner
      t.string :menu_link
      t.text :payment_methods

      t.timestamps
    end
  end

  def self.down
    drop_table :places
  end
end

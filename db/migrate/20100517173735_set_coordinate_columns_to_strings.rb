class SetCoordinateColumnsToStrings < ActiveRecord::Migration
  def self.up
    change_column :places, :longitude, :string
    change_column :places, :latitude, :string
  end

  def self.down
    change_column :places, :longitude, :float
    change_column :places, :latitude, :float
  end
end

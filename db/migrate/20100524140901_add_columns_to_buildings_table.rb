class AddColumnsToBuildingsTable < ActiveRecord::Migration
  def self.up
		add_column :buildings, :longitude, :string
		add_column :buildings, :latitude, :string
		add_column :buildings, :building_code, :string
		add_column :buildings, :description, :text
		add_column :buildings, :photo_file_name, :string
		add_column :buildings, :photo_content_type, :string
		add_column :buildings, :photo_file_size, :integer
		add_column :buildings, :photo_updated_at, :datetime
  end

  def self.down
		remove_column :buildings, :longitude
		remove_column :buildings, :latitude
		remove_column :buildings, :building_code
		remove_column :buildings, :description
		remove_column :buildings, :photo_file_name
		remove_column :buildings, :photo_content_type
		remove_column :buildings, :photo_file_size
		remove_column :buildings, :photo_updated_at
  end
end

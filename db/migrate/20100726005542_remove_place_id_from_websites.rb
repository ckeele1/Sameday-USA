class RemovePlaceIdFromWebsites < ActiveRecord::Migration
  def self.up
    remove_column :websites, :place_id
  end

  def self.down
    add_column :websites, :place_id, :integer
  end
end

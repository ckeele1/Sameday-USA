class RemovePlaceIdFromHours < ActiveRecord::Migration
  def self.up
    remove_column :hours, :place_id
  end

  def self.down
    add_column :hours, :place_id, :integer
  end
end

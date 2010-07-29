class RemovePlaceIdFromNumbers < ActiveRecord::Migration
  def self.up
    remove_column :numbers, :place_id
  end

  def self.down
    add_column :numbers, :place_id, :integer
  end
end

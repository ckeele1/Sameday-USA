class RemovePlaceIdFromCoupons < ActiveRecord::Migration
  def self.up
    remove_column :coupons, :place_id
  end

  def self.down
    add_column :coupons, :place_id, :integer
  end
end

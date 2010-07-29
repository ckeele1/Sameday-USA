class CreatePlacesCoupons < ActiveRecord::Migration
  def self.up
    create_table :places_coupons do |t|
      t.integer :place_id
      t.integer :coupon_id

      t.timestamps
    end
  end

  def self.down
    drop_table :places_coupons
  end
end

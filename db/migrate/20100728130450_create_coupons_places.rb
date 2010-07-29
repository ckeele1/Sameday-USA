class CreateCouponsPlaces < ActiveRecord::Migration
  def self.up
    create_table :coupons_places do |t|
      t.integer :place_id
      t.integer :coupon_id

      t.timestamps
    end
  end

  def self.down
    drop_table :coupons_places
  end
end

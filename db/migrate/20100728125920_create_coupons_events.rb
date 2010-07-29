class CreateCouponsEvents < ActiveRecord::Migration
  def self.up
    create_table :coupons_events do |t|
      t.integer :event_id
      t.integer :coupon_id

      t.timestamps
    end
  end

  def self.down
    drop_table :coupons_events
  end
end

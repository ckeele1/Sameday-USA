class CreateEventsCoupons < ActiveRecord::Migration
  def self.up
    create_table :events_coupons do |t|
      t.integer :event_id
      t.integer :coupon_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events_coupons
  end
end

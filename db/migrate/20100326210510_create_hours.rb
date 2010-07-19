class CreateHours < ActiveRecord::Migration
  def self.up
    create_table :hours do |t|
      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.string :days
      t.integer :place_id

      t.timestamps
    end
  end

  def self.down
    drop_table :hours
  end
end

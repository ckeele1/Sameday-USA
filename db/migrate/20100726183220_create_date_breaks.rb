class CreateDateBreaks < ActiveRecord::Migration
  def self.up
    create_table :date_breaks do |t|
      t.datetime :time_slot

      t.timestamps
    end
  end

  def self.down
    drop_table :date_breaks
  end
end

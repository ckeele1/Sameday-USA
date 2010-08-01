class CreateParishes < ActiveRecord::Migration
  def self.up
    create_table :parishes do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end

  def self.down
    drop_table :parishes
  end
end

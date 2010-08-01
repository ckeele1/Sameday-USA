class CreateAllianceMembers < ActiveRecord::Migration
  def self.up
    create_table :alliance_members do |t|
      t.string :name
      t.integer :county_id

      t.timestamps
    end
  end

  def self.down
    drop_table :alliance_members
  end
end

class CreateAllianceMembersHours < ActiveRecord::Migration
  def self.up
    create_table :alliance_members_hours do |t|
      t.integer :alliance_member_id
      t.integer :hour_id

      t.timestamps
    end
  end

  def self.down
    drop_table :alliance_members_hours
  end
end

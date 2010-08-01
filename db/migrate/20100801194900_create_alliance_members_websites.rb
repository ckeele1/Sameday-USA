class CreateAllianceMembersWebsites < ActiveRecord::Migration
  def self.up
    create_table :alliance_members_websites do |t|
      t.integer :alliance_member_id
      t.integer :website_id

      t.timestamps
    end
  end

  def self.down
    drop_table :alliance_members_websites
  end
end

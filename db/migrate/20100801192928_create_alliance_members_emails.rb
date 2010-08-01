class CreateAllianceMembersEmails < ActiveRecord::Migration
  def self.up
    create_table :alliance_members_emails do |t|
      t.integer :alliance_member_id
      t.integer :email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :alliance_members_emails
  end
end

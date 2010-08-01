class CreateAllianceMembersNumbers < ActiveRecord::Migration
  def self.up
    create_table :alliance_members_numbers do |t|
      t.integer :alliance_member_id
      t.integer :number_id

      t.timestamps
    end
  end

  def self.down
    drop_table :alliance_members_numbers
  end
end

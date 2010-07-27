class RemovePlaceIdFromEmails < ActiveRecord::Migration
  def self.up
    remove_column :emails, :place_id
  end

  def self.down
    add_column :emails, :place_id, :integer
  end
end

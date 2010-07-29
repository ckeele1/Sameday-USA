class CreatePlacesEmails < ActiveRecord::Migration
  def self.up
    create_table :places_emails do |t|
      t.integer :place_id
      t.integer :email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :places_emails
  end
end

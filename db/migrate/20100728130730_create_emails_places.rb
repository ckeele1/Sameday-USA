class CreateEmailsPlaces < ActiveRecord::Migration
  def self.up
    create_table :emails_places do |t|
      t.integer :place_id
      t.integer :email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :emails_places
  end
end

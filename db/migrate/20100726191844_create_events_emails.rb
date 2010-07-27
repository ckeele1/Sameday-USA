class CreateEventsEmails < ActiveRecord::Migration
  def self.up
    create_table :events_emails do |t|
      t.integer :event_id
      t.integer :email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events_emails
  end
end

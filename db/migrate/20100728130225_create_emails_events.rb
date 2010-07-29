class CreateEmailsEvents < ActiveRecord::Migration
  def self.up
    create_table :emails_events do |t|
      t.integer :event_id
      t.integer :email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :emails_events
  end
end

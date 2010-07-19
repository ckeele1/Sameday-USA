class AddOwnerEmailAddressToPlacesTable < ActiveRecord::Migration
  def self.up
    add_column :places, :owner_email_address, :string
  end

  def self.down
    remove_column :places, :owner_email_address
  end
end

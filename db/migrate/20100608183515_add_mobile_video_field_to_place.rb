class AddMobileVideoFieldToPlace < ActiveRecord::Migration
  def self.up
     add_column :places, :video_file_name_mobile, :string
   end

   def self.down
     remove_column :places, :video_file_name_mobile
   end
end

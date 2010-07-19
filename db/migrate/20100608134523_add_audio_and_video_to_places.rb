class AddAudioAndVideoToPlaces < ActiveRecord::Migration
  def self.up
     add_column :places, :audio_file_name,    :string
     add_column :places, :audio_content_type, :string
     add_column :places, :audio_file_size,    :integer
     add_column :places, :audio_updated_at,   :datetime
     add_column :places, :video_file_name,    :string
     add_column :places, :video_content_type, :string
     add_column :places, :video_file_size,    :integer
     add_column :places, :video_updated_at,   :datetime
     add_column :places, :aasm_state, :string, :default => 'pending'
   end

   def self.down
     remove_column :places, :audio_file_name
     remove_column :places, :audio_content_type
     remove_column :places, :audio_file_size
     remove_column :places, :audio_updated_at
     remove_column :places, :video_file_name
     remove_column :places, :video_content_type
     remove_column :places, :video_file_size
     remove_column :places, :video_updated_at
     remove_column :places, :aasm_state
   end
end
class AddCategoriesPlacesTable < ActiveRecord::Migration
  def self.up
	  create_table "categories_places", :id => false, :force => true do |t|
	    t.integer  "category_id"
	    t.integer  "place_id"
	  end
  end

  def self.down
		drop_table :categories_places
  end
end

class Category < ActiveRecord::Base
	acts_as_tree :order => "name", :foreign_key => "category_id"
	
	has_and_belongs_to_many :places
	
	named_scope :active, :conditions => { :active => true }
	
	before_destroy :disallow_destroy_with_children

	def self.top
		find(:all, :conditions => [ 'category_id IS NULL' ])
	end

	def has_children?
		children.size > 0
	end

	def id_s
		id.to_s
	end

	def disallow_destroy_with_children
		false if has_children?
	end
end

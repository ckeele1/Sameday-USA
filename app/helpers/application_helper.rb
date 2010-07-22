# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def expand_tree_into_select_field(categories, category_ids=nil)
		returning(String.new) do |html|
			categories.each do |category|
				html << %{<optgroup #{"class='incorrect-categorization'" if category_ids && category_ids.to_a.include?(category.id.to_s)} label="#{ '&nbsp;&nbsp;&nbsp;' * category.ancestors.size + category.name }"></optgroup>} if category.has_children?
				html << %{<option value="#{ category.id }" #{"selected='selected'" if category_ids && category_ids.to_a.include?(category.id.to_s)}>#{ '&nbsp;&nbsp;&nbsp;' * category.ancestors.size + category.name }</option>} unless category.has_children?
				html << expand_tree_into_select_field(category.children, category_ids) if category.has_children?
			end
		end
	end
	
	def display_notice(page, css_id_prefix='')
		if flash[:error]
			page.replace_html "#{css_id_prefix}error_message", flash[:error]
			page.show "#{css_id_prefix}error_message"
			page.delay(15) do
				page.visual_effect :fade, "#{css_id_prefix}error_message"
			end
		end
		if flash[:notice]
			page.replace_html "#{css_id_prefix}notice_message", flash[:notice]
			page.show "#{css_id_prefix}notice_message"
			page.delay(3) do
				page.visual_effect :fade, "#{css_id_prefix}notice_message"
			end
		end
	end

	def link_to_remove_fields(name, f)
		link_to_function(name, "remove_fields(this)", :class => 'remove')
	end

	def link_to_undo_remove_fields(name, f)
		link_to_function(name, "undo_remove_fields(this)", :class => 'undo-remove')
	end

	def link_to_add_fields(name, f, association)
		new_object = f.object.class.reflect_on_association(association).klass.new
		fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
			render(association.to_s.singularize + "_fields", :f => builder)
		end
		link_to_function(name, h("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
	end

	def title(page_title)
		content_for(:title) { page_title }
	end
	
	def has_map(value)
		content_for(:has_map) { value }
	end

	def has_color_picker(value)
		content_for(:has_color_picker) { value }
	end

	def has_video_or_audio(value)
		content_for(:has_video_or_audio) { value }
	end

	def checked?(value, new_record=false, default=true)
		if new_record == true
			checked = default ? 'checked' : ''
		else
			checked = value ? 'checked' : ''
		end
	end

	# AUTHORIZATION
	include Acl9Helpers

	access_control :edit_categories? do
		allow :administrator
		allow :editor
		allow :owner, :of => Category
	end
	
	access_control :destroy_categories? do
		allow :administrator
		allow :editor
		allow :owner, :of => Category
	end

	access_control :create_categories? do
		allow :administrator
		allow :editor
		allow :owner, :of => Category
	end
	
	access_control :edit_places? do
		allow :administrator
		allow :editor
		allow :owner, :of => Place
	end
	
	access_control :destroy_places? do
		allow :administrator
		allow :editor
		allow :owner, :of => Place
	end

	access_control :create_places? do
		allow :administrator
		allow :editor
		allow :owner, :of => Place
	end
	
	access_control :edit_users? do
		allow :administrator
		allow :owner, :of => User
	end
	
	access_control :destroy_users? do
		allow :administrator
		allow :owner, :of => User
	end

	access_control :create_users? do
		allow :administrator
		allow :owner, :of => User
	end

	access_control :show_users? do
		allow :administrator
		allow :editor
		allow :owner, :of => User
	end

	access_control :edit_transits? do
		allow :administrator
		allow :editor
	end
	
	access_control :destroy_transits? do
		allow :administrator
		allow :editor
	end

	access_control :create_transits? do
		allow :administrator
		allow :editor
	end

	access_control :edit_tours? do
		allow :administrator
		allow :editor
	end
	
	access_control :destroy_tours? do
		allow :administrator
		allow :editor
	end

	access_control :create_tours? do
		allow :administrator
		allow :editor
	end
end

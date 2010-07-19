xml.instruct!
xml.data do
	Category.active.top.each do |category|
		xml.TCCategory do
			xml.name category.name
			xml.category_places "#{request.protocol}#{request.host}#{":#{request.port}" unless request.port == 80}/places.xml?category=#{category.name.downcase.parameterize}"
			xml.category_id category.id
			xml.children do
				if category.has_children?
					walk_through_children(xml, category)
				end
			end
		end
	end
end
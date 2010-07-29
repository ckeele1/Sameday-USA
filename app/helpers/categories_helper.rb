module CategoriesHelper

	# XML Helpers

	def walk_through_children(xml, category)
		category.children.each do |child|
			xml.TCCategory do
				xml.name child.name
				xml.category_places "#{request.protocol}#{request.host}#{":#{request.port}" unless request.port == 80}/places.xml?category=#{child.name.downcase.parameterize}"
				xml.category_id child.id
				xml.children do
					if child.has_children?
						walk_through_children(xml, child)
					end
				end
			end
		end
	end
end
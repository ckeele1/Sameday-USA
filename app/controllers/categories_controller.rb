class CategoriesController < ApplicationController

	access_control do
		allow :owner, :of => Category
		allow anonymous, logged_in, :to => [:show, :index]
		allow :editor
		allow :administrator
	end

	def index
		@categories = Category.top

		respond_to do |format|
			format.html { @categories = @categories.paginate :page => params[:page], :per_page => 20 }
			format.xml
		end
	end

	def show
		@category = Category.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
		end
	end

	def new
		@category = Category.new

		respond_to do |format|
			format.html # new.html.erb
		end
	end

	def edit
		@category = Category.find(params[:id])
	end

	def create
		@category = Category.new(params[:category])

		respond_to do |format|
			if @category.save
				flash[:notice] = 'Category was successfully created.'
				format.html { redirect_to(@category) }
			else
				format.html { render :action => "new" }
			end
		end
	end

	def update
		@category = Category.find(params[:id])

		respond_to do |format|
			if @category.update_attributes(params[:category])
				flash[:notice] = 'Category was successfully updated.'
				format.html { redirect_to(@category) }
			else
				format.html { render :action => "edit" }
			end
		end
	end

	def destroy
		@category = Category.find(params[:id])

		respond_to do |format|
			if @category.destroy
				flash[:notice] = 'Category was removed.'
				format.html { redirect_to(categories_url) }
			else
				flash[:notice] = 'Category could not be removed.'
				format.html { redirect_to(categories_url) }
			end
		end
	end

	def sort_categories
		@categories = Category.top

		respond_to do |format|
			format.html
		end
	end

	def sort
		set_parent_and_position(nil, params['sortable'])
		render :nothing => true
	end

	def set_parent_and_position(parent, sortable)
		sortable.each do |pos, hash|
			id = hash.delete("id")
			Category.update(id, {:position => pos.to_i + 1, :category_id => parent})
			set_parent_and_position(id, hash)
		end
	end

end
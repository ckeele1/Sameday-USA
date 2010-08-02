class PlacesController < ApplicationController

	access_control do
		allow :owner, :of => Place
		#allow anonymous, logged_in, :to => [:show, :index, :index_details]
		allow :editor
		allow :administrator
		allow anonymous
	end
	
	def find_counties
		if request.post?
			@state_id=params[:id]
			
			respond_to do |format|
				format.js{ }
			end
		end
	end
	
	def index_local
		if request.post?
			@county_id=params[:id]
			#@places = Place.find_all_by_state(State.find_all_by_county(@county_id).id)
			#@places = Place.search({:category => params[:category], :name => params["name"], :location => params["location"], :owner => params["contact"]})
			@places=Place.all
			    
			respond_to do |format|
				format.js{ }
      			format.html { @places = @places.paginate :page => params[:page], :per_page => 20 }
      			format.xml  { render :xml => @places }
  			end
		end
	end
	
	def index
		@places = Place.search({:category => params[:category], :name => params["name"], :location => params["location"], :owner => params["contact"]})

		respond_to do |format|
			format.html { @places = @places }
			format.xml { @places = @places }
		end
	end

	def show
		@place = Place.find(params[:id])

		respond_to do |format|
			format.html
			format.xml
		end
	end

	def new
		@place = Place.new
		@categories = Category.all
		
		respond_to do |format|
			format.html # new.html.erb
		end
	end

	def edit
		@place = Place.find(params[:id])
		@categories = Category.all		
	end

	def create
		params[:place][:category_ids] ||= []
		@place = Place.new(params[:place])

		respond_to do |format|
			if @place.save
				@place.convert 
				flash[:notice] = 'Place was successfully created.'
				format.html { redirect_to(places_path) }
				format.xml { render :xml => @place, :status => :created, :location => @place }
			else
				format.html { render :action => "new" }
				format.xml { render :xml => @place.errors, :status => :unprocessable_entity }
				format.js { 
					render :update do |page|
						display_notice(page)
					end					
				}
			end
		end
	end

	def update
		params[:place][:category_ids] ||= []
		@place = Place.find(params[:id])

		respond_to do |format|
			if @place.update_attributes(params[:place])
				@place.convert unless params[:place][:video].blank?
				flash[:notice] = 'Place was successfully updated.'
				format.html { redirect_to(places_path) }
				format.xml { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml { render :xml => @place.errors, :status => :unprocessable_entity }
			end
		end
	end

	def destroy
		@place = Place.find(params[:id])
		@place.destroy

		respond_to do |format|
			format.html { redirect_to(places_url) }
		end
	end

	def create_or_update
		params[:place][:category_ids] ||= []
		@place = Place.find_or_initialize_by_name(:name => params[:place][:name])
		@place.attributes = params[:place]

		respond_to do |format|
			if @place.save(false)
				@place.convert
				flash[:notice] = 'Place was successfully created.'
				format.html { redirect_to(places_path) }
				format.xml { render :xml => @place, :status => :created, :location => @place }
			else
				format.html { render :action => "new" }
				format.xml { render :xml => @place.errors, :status => :unprocessable_entity }
				format.js { 
					render :update do |page|
						display_notice(page)
					end					
				}
			end
		end
	end

	def index_details
		@places = Place.search({:category => params[:category], :name => params["name"], :location => params["location"], :owner => params["contact"]})

		respond_to do |format|
			format.html { @places = @places.paginate :page => params[:page], :per_page => 20 }
			format.xml { @places = @places }
		end
	end
end
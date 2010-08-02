class EventsController < ApplicationController
	
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
			@events=Event.all
			    
			respond_to do |format|
				format.js{ }
      			format.html { @events = @events.paginate :page => params[:page], :per_page => 20 }
      			format.xml  { render :xml => @events }
  			end
		end
	end
  # GET /events
  # GET /events.xml
  def index
    @events = Event.all

    respond_to do |format|
      format.html { @events = @events.paginate :page => params[:page], :per_page => 20 }
      format.xml  { render :xml => @events }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/new
  # GET /events/new.xml
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.xml
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to(@event, :notice => 'Event was successfully created.') }
        format.xml  { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.xml
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to(@event, :notice => 'Event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end
end

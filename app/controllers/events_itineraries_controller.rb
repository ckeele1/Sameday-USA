class EventsItinerariesController < ApplicationController
  # GET /events_itineraries
  # GET /events_itineraries.xml
  def index
    @events_itineraries = EventsItinerary.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events_itineraries }
    end
  end

  # GET /events_itineraries/1
  # GET /events_itineraries/1.xml
  def show
    @events_itinerary = EventsItinerary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @events_itinerary }
    end
  end

  # GET /events_itineraries/new
  # GET /events_itineraries/new.xml
  def new
    @events_itinerary = EventsItinerary.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @events_itinerary }
    end
  end

  # GET /events_itineraries/1/edit
  def edit
    @events_itinerary = EventsItinerary.find(params[:id])
  end

  # POST /events_itineraries
  # POST /events_itineraries.xml
  def create
    @events_itinerary = EventsItinerary.new(params[:events_itinerary])

    respond_to do |format|
      if @events_itinerary.save
        format.html { redirect_to(@events_itinerary, :notice => 'EventsItinerary was successfully created.') }
        format.xml  { render :xml => @events_itinerary, :status => :created, :location => @events_itinerary }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @events_itinerary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events_itineraries/1
  # PUT /events_itineraries/1.xml
  def update
    @events_itinerary = EventsItinerary.find(params[:id])

    respond_to do |format|
      if @events_itinerary.update_attributes(params[:events_itinerary])
        format.html { redirect_to(@events_itinerary, :notice => 'EventsItinerary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @events_itinerary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events_itineraries/1
  # DELETE /events_itineraries/1.xml
  def destroy
    @events_itinerary = EventsItinerary.find(params[:id])
    @events_itinerary.destroy

    respond_to do |format|
      format.html { redirect_to(events_itineraries_url) }
      format.xml  { head :ok }
    end
  end
end

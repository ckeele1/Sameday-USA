class ItinerariesEventsController < ApplicationController
  # GET /itineraries_events
  # GET /itineraries_events.xml
  def index
    @itineraries_events = ItinerariesEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itineraries_events }
    end
  end

  # GET /itineraries_events/1
  # GET /itineraries_events/1.xml
  def show
    @itineraries_event = ItinerariesEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itineraries_event }
    end
  end

  # GET /itineraries_events/new
  # GET /itineraries_events/new.xml
  def new
    @itineraries_event = ItinerariesEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itineraries_event }
    end
  end

  # GET /itineraries_events/1/edit
  def edit
    @itineraries_event = ItinerariesEvent.find(params[:id])
  end

  # POST /itineraries_events
  # POST /itineraries_events.xml
  def create
    @itineraries_event = ItinerariesEvent.new(params[:itineraries_event])

    respond_to do |format|
      if @itineraries_event.save
        format.html { redirect_to(@itineraries_event, :notice => 'ItinerariesEvent was successfully created.') }
        format.xml  { render :xml => @itineraries_event, :status => :created, :location => @itineraries_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itineraries_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itineraries_events/1
  # PUT /itineraries_events/1.xml
  def update
    @itineraries_event = ItinerariesEvent.find(params[:id])

    respond_to do |format|
      if @itineraries_event.update_attributes(params[:itineraries_event])
        format.html { redirect_to(@itineraries_event, :notice => 'ItinerariesEvent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itineraries_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itineraries_events/1
  # DELETE /itineraries_events/1.xml
  def destroy
    @itineraries_event = ItinerariesEvent.find(params[:id])
    @itineraries_event.destroy

    respond_to do |format|
      format.html { redirect_to(itineraries_events_url) }
      format.xml  { head :ok }
    end
  end
end

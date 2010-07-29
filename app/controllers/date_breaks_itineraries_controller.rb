class DateBreaksItinerariesController < ApplicationController
  # GET /date_breaks_itineraries
  # GET /date_breaks_itineraries.xml
  def index
    @date_breaks_itineraries = DateBreaksItinerary.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @date_breaks_itineraries }
    end
  end

  # GET /date_breaks_itineraries/1
  # GET /date_breaks_itineraries/1.xml
  def show
    @date_breaks_itinerary = DateBreaksItinerary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @date_breaks_itinerary }
    end
  end

  # GET /date_breaks_itineraries/new
  # GET /date_breaks_itineraries/new.xml
  def new
    @date_breaks_itinerary = DateBreaksItinerary.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @date_breaks_itinerary }
    end
  end

  # GET /date_breaks_itineraries/1/edit
  def edit
    @date_breaks_itinerary = DateBreaksItinerary.find(params[:id])
  end

  # POST /date_breaks_itineraries
  # POST /date_breaks_itineraries.xml
  def create
    @date_breaks_itinerary = DateBreaksItinerary.new(params[:date_breaks_itinerary])

    respond_to do |format|
      if @date_breaks_itinerary.save
        format.html { redirect_to(@date_breaks_itinerary, :notice => 'DateBreaksItinerary was successfully created.') }
        format.xml  { render :xml => @date_breaks_itinerary, :status => :created, :location => @date_breaks_itinerary }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @date_breaks_itinerary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /date_breaks_itineraries/1
  # PUT /date_breaks_itineraries/1.xml
  def update
    @date_breaks_itinerary = DateBreaksItinerary.find(params[:id])

    respond_to do |format|
      if @date_breaks_itinerary.update_attributes(params[:date_breaks_itinerary])
        format.html { redirect_to(@date_breaks_itinerary, :notice => 'DateBreaksItinerary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @date_breaks_itinerary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /date_breaks_itineraries/1
  # DELETE /date_breaks_itineraries/1.xml
  def destroy
    @date_breaks_itinerary = DateBreaksItinerary.find(params[:id])
    @date_breaks_itinerary.destroy

    respond_to do |format|
      format.html { redirect_to(date_breaks_itineraries_url) }
      format.xml  { head :ok }
    end
  end
end

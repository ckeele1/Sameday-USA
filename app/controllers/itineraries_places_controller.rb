class ItinerariesPlacesController < ApplicationController
  # GET /itineraries_places
  # GET /itineraries_places.xml
  def index
    @itineraries_places = ItinerariesPlace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itineraries_places }
    end
  end

  # GET /itineraries_places/1
  # GET /itineraries_places/1.xml
  def show
    @itineraries_place = ItinerariesPlace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itineraries_place }
    end
  end

  # GET /itineraries_places/new
  # GET /itineraries_places/new.xml
  def new
    @itineraries_place = ItinerariesPlace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itineraries_place }
    end
  end

  # GET /itineraries_places/1/edit
  def edit
    @itineraries_place = ItinerariesPlace.find(params[:id])
  end

  # POST /itineraries_places
  # POST /itineraries_places.xml
  def create
    @itineraries_place = ItinerariesPlace.new(params[:itineraries_place])

    respond_to do |format|
      if @itineraries_place.save
        format.html { redirect_to(@itineraries_place, :notice => 'ItinerariesPlace was successfully created.') }
        format.xml  { render :xml => @itineraries_place, :status => :created, :location => @itineraries_place }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itineraries_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itineraries_places/1
  # PUT /itineraries_places/1.xml
  def update
    @itineraries_place = ItinerariesPlace.find(params[:id])

    respond_to do |format|
      if @itineraries_place.update_attributes(params[:itineraries_place])
        format.html { redirect_to(@itineraries_place, :notice => 'ItinerariesPlace was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itineraries_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itineraries_places/1
  # DELETE /itineraries_places/1.xml
  def destroy
    @itineraries_place = ItinerariesPlace.find(params[:id])
    @itineraries_place.destroy

    respond_to do |format|
      format.html { redirect_to(itineraries_places_url) }
      format.xml  { head :ok }
    end
  end
end

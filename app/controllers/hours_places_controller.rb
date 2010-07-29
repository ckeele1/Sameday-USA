class HoursPlacesController < ApplicationController
  # GET /hours_places
  # GET /hours_places.xml
  def index
    @hours_places = HoursPlace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hours_places }
    end
  end

  # GET /hours_places/1
  # GET /hours_places/1.xml
  def show
    @hours_place = HoursPlace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hours_place }
    end
  end

  # GET /hours_places/new
  # GET /hours_places/new.xml
  def new
    @hours_place = HoursPlace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hours_place }
    end
  end

  # GET /hours_places/1/edit
  def edit
    @hours_place = HoursPlace.find(params[:id])
  end

  # POST /hours_places
  # POST /hours_places.xml
  def create
    @hours_place = HoursPlace.new(params[:hours_place])

    respond_to do |format|
      if @hours_place.save
        format.html { redirect_to(@hours_place, :notice => 'HoursPlace was successfully created.') }
        format.xml  { render :xml => @hours_place, :status => :created, :location => @hours_place }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hours_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hours_places/1
  # PUT /hours_places/1.xml
  def update
    @hours_place = HoursPlace.find(params[:id])

    respond_to do |format|
      if @hours_place.update_attributes(params[:hours_place])
        format.html { redirect_to(@hours_place, :notice => 'HoursPlace was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hours_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_places/1
  # DELETE /hours_places/1.xml
  def destroy
    @hours_place = HoursPlace.find(params[:id])
    @hours_place.destroy

    respond_to do |format|
      format.html { redirect_to(hours_places_url) }
      format.xml  { head :ok }
    end
  end
end

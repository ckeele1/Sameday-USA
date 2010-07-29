class PlacesHoursController < ApplicationController
  # GET /places_hours
  # GET /places_hours.xml
  def index
    @places_hours = PlacesHour.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @places_hours }
    end
  end

  # GET /places_hours/1
  # GET /places_hours/1.xml
  def show
    @places_hour = PlacesHour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @places_hour }
    end
  end

  # GET /places_hours/new
  # GET /places_hours/new.xml
  def new
    @places_hour = PlacesHour.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @places_hour }
    end
  end

  # GET /places_hours/1/edit
  def edit
    @places_hour = PlacesHour.find(params[:id])
  end

  # POST /places_hours
  # POST /places_hours.xml
  def create
    @places_hour = PlacesHour.new(params[:places_hour])

    respond_to do |format|
      if @places_hour.save
        format.html { redirect_to(@places_hour, :notice => 'PlacesHour was successfully created.') }
        format.xml  { render :xml => @places_hour, :status => :created, :location => @places_hour }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @places_hour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /places_hours/1
  # PUT /places_hours/1.xml
  def update
    @places_hour = PlacesHour.find(params[:id])

    respond_to do |format|
      if @places_hour.update_attributes(params[:places_hour])
        format.html { redirect_to(@places_hour, :notice => 'PlacesHour was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @places_hour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /places_hours/1
  # DELETE /places_hours/1.xml
  def destroy
    @places_hour = PlacesHour.find(params[:id])
    @places_hour.destroy

    respond_to do |format|
      format.html { redirect_to(places_hours_url) }
      format.xml  { head :ok }
    end
  end
end

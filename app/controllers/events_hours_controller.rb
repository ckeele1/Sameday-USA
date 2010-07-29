class EventsHoursController < ApplicationController
  # GET /events_hours
  # GET /events_hours.xml
  def index
    @events_hours = EventsHour.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events_hours }
    end
  end

  # GET /events_hours/1
  # GET /events_hours/1.xml
  def show
    @events_hour = EventsHour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @events_hour }
    end
  end

  # GET /events_hours/new
  # GET /events_hours/new.xml
  def new
    @events_hour = EventsHour.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @events_hour }
    end
  end

  # GET /events_hours/1/edit
  def edit
    @events_hour = EventsHour.find(params[:id])
  end

  # POST /events_hours
  # POST /events_hours.xml
  def create
    @events_hour = EventsHour.new(params[:events_hour])

    respond_to do |format|
      if @events_hour.save
        format.html { redirect_to(@events_hour, :notice => 'EventsHour was successfully created.') }
        format.xml  { render :xml => @events_hour, :status => :created, :location => @events_hour }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @events_hour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events_hours/1
  # PUT /events_hours/1.xml
  def update
    @events_hour = EventsHour.find(params[:id])

    respond_to do |format|
      if @events_hour.update_attributes(params[:events_hour])
        format.html { redirect_to(@events_hour, :notice => 'EventsHour was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @events_hour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events_hours/1
  # DELETE /events_hours/1.xml
  def destroy
    @events_hour = EventsHour.find(params[:id])
    @events_hour.destroy

    respond_to do |format|
      format.html { redirect_to(events_hours_url) }
      format.xml  { head :ok }
    end
  end
end

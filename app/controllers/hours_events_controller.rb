class HoursEventsController < ApplicationController
  # GET /hours_events
  # GET /hours_events.xml
  def index
    @hours_events = HoursEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hours_events }
    end
  end

  # GET /hours_events/1
  # GET /hours_events/1.xml
  def show
    @hours_event = HoursEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hours_event }
    end
  end

  # GET /hours_events/new
  # GET /hours_events/new.xml
  def new
    @hours_event = HoursEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hours_event }
    end
  end

  # GET /hours_events/1/edit
  def edit
    @hours_event = HoursEvent.find(params[:id])
  end

  # POST /hours_events
  # POST /hours_events.xml
  def create
    @hours_event = HoursEvent.new(params[:hours_event])

    respond_to do |format|
      if @hours_event.save
        format.html { redirect_to(@hours_event, :notice => 'HoursEvent was successfully created.') }
        format.xml  { render :xml => @hours_event, :status => :created, :location => @hours_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hours_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hours_events/1
  # PUT /hours_events/1.xml
  def update
    @hours_event = HoursEvent.find(params[:id])

    respond_to do |format|
      if @hours_event.update_attributes(params[:hours_event])
        format.html { redirect_to(@hours_event, :notice => 'HoursEvent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hours_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_events/1
  # DELETE /hours_events/1.xml
  def destroy
    @hours_event = HoursEvent.find(params[:id])
    @hours_event.destroy

    respond_to do |format|
      format.html { redirect_to(hours_events_url) }
      format.xml  { head :ok }
    end
  end
end

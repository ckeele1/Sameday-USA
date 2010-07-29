class CouponsEventsController < ApplicationController
  # GET /coupons_events
  # GET /coupons_events.xml
  def index
    @coupons_events = CouponsEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coupons_events }
    end
  end

  # GET /coupons_events/1
  # GET /coupons_events/1.xml
  def show
    @coupons_event = CouponsEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @coupons_event }
    end
  end

  # GET /coupons_events/new
  # GET /coupons_events/new.xml
  def new
    @coupons_event = CouponsEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @coupons_event }
    end
  end

  # GET /coupons_events/1/edit
  def edit
    @coupons_event = CouponsEvent.find(params[:id])
  end

  # POST /coupons_events
  # POST /coupons_events.xml
  def create
    @coupons_event = CouponsEvent.new(params[:coupons_event])

    respond_to do |format|
      if @coupons_event.save
        format.html { redirect_to(@coupons_event, :notice => 'CouponsEvent was successfully created.') }
        format.xml  { render :xml => @coupons_event, :status => :created, :location => @coupons_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @coupons_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coupons_events/1
  # PUT /coupons_events/1.xml
  def update
    @coupons_event = CouponsEvent.find(params[:id])

    respond_to do |format|
      if @coupons_event.update_attributes(params[:coupons_event])
        format.html { redirect_to(@coupons_event, :notice => 'CouponsEvent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @coupons_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coupons_events/1
  # DELETE /coupons_events/1.xml
  def destroy
    @coupons_event = CouponsEvent.find(params[:id])
    @coupons_event.destroy

    respond_to do |format|
      format.html { redirect_to(coupons_events_url) }
      format.xml  { head :ok }
    end
  end
end

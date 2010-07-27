class EventsNumbersController < ApplicationController
  # GET /events_numbers
  # GET /events_numbers.xml
  def index
    @events_numbers = EventsNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events_numbers }
    end
  end

  # GET /events_numbers/1
  # GET /events_numbers/1.xml
  def show
    @events_number = EventsNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @events_number }
    end
  end

  # GET /events_numbers/new
  # GET /events_numbers/new.xml
  def new
    @events_number = EventsNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @events_number }
    end
  end

  # GET /events_numbers/1/edit
  def edit
    @events_number = EventsNumber.find(params[:id])
  end

  # POST /events_numbers
  # POST /events_numbers.xml
  def create
    @events_number = EventsNumber.new(params[:events_number])

    respond_to do |format|
      if @events_number.save
        format.html { redirect_to(@events_number, :notice => 'EventsNumber was successfully created.') }
        format.xml  { render :xml => @events_number, :status => :created, :location => @events_number }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @events_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events_numbers/1
  # PUT /events_numbers/1.xml
  def update
    @events_number = EventsNumber.find(params[:id])

    respond_to do |format|
      if @events_number.update_attributes(params[:events_number])
        format.html { redirect_to(@events_number, :notice => 'EventsNumber was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @events_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events_numbers/1
  # DELETE /events_numbers/1.xml
  def destroy
    @events_number = EventsNumber.find(params[:id])
    @events_number.destroy

    respond_to do |format|
      format.html { redirect_to(events_numbers_url) }
      format.xml  { head :ok }
    end
  end
end

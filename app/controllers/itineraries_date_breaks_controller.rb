class ItinerariesDateBreaksController < ApplicationController
  # GET /itineraries_date_breaks
  # GET /itineraries_date_breaks.xml
  def index
    @itineraries_date_breaks = ItinerariesDateBreak.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itineraries_date_breaks }
    end
  end

  # GET /itineraries_date_breaks/1
  # GET /itineraries_date_breaks/1.xml
  def show
    @itineraries_date_break = ItinerariesDateBreak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itineraries_date_break }
    end
  end

  # GET /itineraries_date_breaks/new
  # GET /itineraries_date_breaks/new.xml
  def new
    @itineraries_date_break = ItinerariesDateBreak.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itineraries_date_break }
    end
  end

  # GET /itineraries_date_breaks/1/edit
  def edit
    @itineraries_date_break = ItinerariesDateBreak.find(params[:id])
  end

  # POST /itineraries_date_breaks
  # POST /itineraries_date_breaks.xml
  def create
    @itineraries_date_break = ItinerariesDateBreak.new(params[:itineraries_date_break])

    respond_to do |format|
      if @itineraries_date_break.save
        format.html { redirect_to(@itineraries_date_break, :notice => 'ItinerariesDateBreak was successfully created.') }
        format.xml  { render :xml => @itineraries_date_break, :status => :created, :location => @itineraries_date_break }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itineraries_date_break.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itineraries_date_breaks/1
  # PUT /itineraries_date_breaks/1.xml
  def update
    @itineraries_date_break = ItinerariesDateBreak.find(params[:id])

    respond_to do |format|
      if @itineraries_date_break.update_attributes(params[:itineraries_date_break])
        format.html { redirect_to(@itineraries_date_break, :notice => 'ItinerariesDateBreak was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itineraries_date_break.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itineraries_date_breaks/1
  # DELETE /itineraries_date_breaks/1.xml
  def destroy
    @itineraries_date_break = ItinerariesDateBreak.find(params[:id])
    @itineraries_date_break.destroy

    respond_to do |format|
      format.html { redirect_to(itineraries_date_breaks_url) }
      format.xml  { head :ok }
    end
  end
end

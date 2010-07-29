class ItinerariesSegmentsController < ApplicationController
  # GET /itineraries_segments
  # GET /itineraries_segments.xml
  def index
    @itineraries_segments = ItinerariesSegment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itineraries_segments }
    end
  end

  # GET /itineraries_segments/1
  # GET /itineraries_segments/1.xml
  def show
    @itineraries_segment = ItinerariesSegment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itineraries_segment }
    end
  end

  # GET /itineraries_segments/new
  # GET /itineraries_segments/new.xml
  def new
    @itineraries_segment = ItinerariesSegment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itineraries_segment }
    end
  end

  # GET /itineraries_segments/1/edit
  def edit
    @itineraries_segment = ItinerariesSegment.find(params[:id])
  end

  # POST /itineraries_segments
  # POST /itineraries_segments.xml
  def create
    @itineraries_segment = ItinerariesSegment.new(params[:itineraries_segment])

    respond_to do |format|
      if @itineraries_segment.save
        format.html { redirect_to(@itineraries_segment, :notice => 'ItinerariesSegment was successfully created.') }
        format.xml  { render :xml => @itineraries_segment, :status => :created, :location => @itineraries_segment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itineraries_segment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itineraries_segments/1
  # PUT /itineraries_segments/1.xml
  def update
    @itineraries_segment = ItinerariesSegment.find(params[:id])

    respond_to do |format|
      if @itineraries_segment.update_attributes(params[:itineraries_segment])
        format.html { redirect_to(@itineraries_segment, :notice => 'ItinerariesSegment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itineraries_segment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itineraries_segments/1
  # DELETE /itineraries_segments/1.xml
  def destroy
    @itineraries_segment = ItinerariesSegment.find(params[:id])
    @itineraries_segment.destroy

    respond_to do |format|
      format.html { redirect_to(itineraries_segments_url) }
      format.xml  { head :ok }
    end
  end
end

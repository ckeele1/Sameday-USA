class PlacesNumbersController < ApplicationController
  # GET /places_numbers
  # GET /places_numbers.xml
  def index
    @places_numbers = PlacesNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @places_numbers }
    end
  end

  # GET /places_numbers/1
  # GET /places_numbers/1.xml
  def show
    @places_number = PlacesNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @places_number }
    end
  end

  # GET /places_numbers/new
  # GET /places_numbers/new.xml
  def new
    @places_number = PlacesNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @places_number }
    end
  end

  # GET /places_numbers/1/edit
  def edit
    @places_number = PlacesNumber.find(params[:id])
  end

  # POST /places_numbers
  # POST /places_numbers.xml
  def create
    @places_number = PlacesNumber.new(params[:places_number])

    respond_to do |format|
      if @places_number.save
        format.html { redirect_to(@places_number, :notice => 'PlacesNumber was successfully created.') }
        format.xml  { render :xml => @places_number, :status => :created, :location => @places_number }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @places_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /places_numbers/1
  # PUT /places_numbers/1.xml
  def update
    @places_number = PlacesNumber.find(params[:id])

    respond_to do |format|
      if @places_number.update_attributes(params[:places_number])
        format.html { redirect_to(@places_number, :notice => 'PlacesNumber was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @places_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /places_numbers/1
  # DELETE /places_numbers/1.xml
  def destroy
    @places_number = PlacesNumber.find(params[:id])
    @places_number.destroy

    respond_to do |format|
      format.html { redirect_to(places_numbers_url) }
      format.xml  { head :ok }
    end
  end
end

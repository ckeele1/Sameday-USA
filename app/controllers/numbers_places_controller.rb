class NumbersPlacesController < ApplicationController
  # GET /numbers_places
  # GET /numbers_places.xml
  def index
    @numbers_places = NumbersPlace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @numbers_places }
    end
  end

  # GET /numbers_places/1
  # GET /numbers_places/1.xml
  def show
    @numbers_place = NumbersPlace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @numbers_place }
    end
  end

  # GET /numbers_places/new
  # GET /numbers_places/new.xml
  def new
    @numbers_place = NumbersPlace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @numbers_place }
    end
  end

  # GET /numbers_places/1/edit
  def edit
    @numbers_place = NumbersPlace.find(params[:id])
  end

  # POST /numbers_places
  # POST /numbers_places.xml
  def create
    @numbers_place = NumbersPlace.new(params[:numbers_place])

    respond_to do |format|
      if @numbers_place.save
        format.html { redirect_to(@numbers_place, :notice => 'NumbersPlace was successfully created.') }
        format.xml  { render :xml => @numbers_place, :status => :created, :location => @numbers_place }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @numbers_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /numbers_places/1
  # PUT /numbers_places/1.xml
  def update
    @numbers_place = NumbersPlace.find(params[:id])

    respond_to do |format|
      if @numbers_place.update_attributes(params[:numbers_place])
        format.html { redirect_to(@numbers_place, :notice => 'NumbersPlace was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @numbers_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /numbers_places/1
  # DELETE /numbers_places/1.xml
  def destroy
    @numbers_place = NumbersPlace.find(params[:id])
    @numbers_place.destroy

    respond_to do |format|
      format.html { redirect_to(numbers_places_url) }
      format.xml  { head :ok }
    end
  end
end

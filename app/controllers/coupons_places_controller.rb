class CouponsPlacesController < ApplicationController
  # GET /coupons_places
  # GET /coupons_places.xml
  def index
    @coupons_places = CouponsPlace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coupons_places }
    end
  end

  # GET /coupons_places/1
  # GET /coupons_places/1.xml
  def show
    @coupons_place = CouponsPlace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @coupons_place }
    end
  end

  # GET /coupons_places/new
  # GET /coupons_places/new.xml
  def new
    @coupons_place = CouponsPlace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @coupons_place }
    end
  end

  # GET /coupons_places/1/edit
  def edit
    @coupons_place = CouponsPlace.find(params[:id])
  end

  # POST /coupons_places
  # POST /coupons_places.xml
  def create
    @coupons_place = CouponsPlace.new(params[:coupons_place])

    respond_to do |format|
      if @coupons_place.save
        format.html { redirect_to(@coupons_place, :notice => 'CouponsPlace was successfully created.') }
        format.xml  { render :xml => @coupons_place, :status => :created, :location => @coupons_place }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @coupons_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coupons_places/1
  # PUT /coupons_places/1.xml
  def update
    @coupons_place = CouponsPlace.find(params[:id])

    respond_to do |format|
      if @coupons_place.update_attributes(params[:coupons_place])
        format.html { redirect_to(@coupons_place, :notice => 'CouponsPlace was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @coupons_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coupons_places/1
  # DELETE /coupons_places/1.xml
  def destroy
    @coupons_place = CouponsPlace.find(params[:id])
    @coupons_place.destroy

    respond_to do |format|
      format.html { redirect_to(coupons_places_url) }
      format.xml  { head :ok }
    end
  end
end

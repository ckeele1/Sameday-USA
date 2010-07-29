class PlacesCouponsController < ApplicationController
  # GET /places_coupons
  # GET /places_coupons.xml
  def index
    @places_coupons = PlacesCoupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @places_coupons }
    end
  end

  # GET /places_coupons/1
  # GET /places_coupons/1.xml
  def show
    @places_coupon = PlacesCoupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @places_coupon }
    end
  end

  # GET /places_coupons/new
  # GET /places_coupons/new.xml
  def new
    @places_coupon = PlacesCoupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @places_coupon }
    end
  end

  # GET /places_coupons/1/edit
  def edit
    @places_coupon = PlacesCoupon.find(params[:id])
  end

  # POST /places_coupons
  # POST /places_coupons.xml
  def create
    @places_coupon = PlacesCoupon.new(params[:places_coupon])

    respond_to do |format|
      if @places_coupon.save
        format.html { redirect_to(@places_coupon, :notice => 'PlacesCoupon was successfully created.') }
        format.xml  { render :xml => @places_coupon, :status => :created, :location => @places_coupon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @places_coupon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /places_coupons/1
  # PUT /places_coupons/1.xml
  def update
    @places_coupon = PlacesCoupon.find(params[:id])

    respond_to do |format|
      if @places_coupon.update_attributes(params[:places_coupon])
        format.html { redirect_to(@places_coupon, :notice => 'PlacesCoupon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @places_coupon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /places_coupons/1
  # DELETE /places_coupons/1.xml
  def destroy
    @places_coupon = PlacesCoupon.find(params[:id])
    @places_coupon.destroy

    respond_to do |format|
      format.html { redirect_to(places_coupons_url) }
      format.xml  { head :ok }
    end
  end
end

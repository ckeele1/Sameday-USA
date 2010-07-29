class EventsCouponsController < ApplicationController
  # GET /events_coupons
  # GET /events_coupons.xml
  def index
    @events_coupons = EventsCoupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events_coupons }
    end
  end

  # GET /events_coupons/1
  # GET /events_coupons/1.xml
  def show
    @events_coupon = EventsCoupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @events_coupon }
    end
  end

  # GET /events_coupons/new
  # GET /events_coupons/new.xml
  def new
    @events_coupon = EventsCoupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @events_coupon }
    end
  end

  # GET /events_coupons/1/edit
  def edit
    @events_coupon = EventsCoupon.find(params[:id])
  end

  # POST /events_coupons
  # POST /events_coupons.xml
  def create
    @events_coupon = EventsCoupon.new(params[:events_coupon])

    respond_to do |format|
      if @events_coupon.save
        format.html { redirect_to(@events_coupon, :notice => 'EventsCoupon was successfully created.') }
        format.xml  { render :xml => @events_coupon, :status => :created, :location => @events_coupon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @events_coupon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events_coupons/1
  # PUT /events_coupons/1.xml
  def update
    @events_coupon = EventsCoupon.find(params[:id])

    respond_to do |format|
      if @events_coupon.update_attributes(params[:events_coupon])
        format.html { redirect_to(@events_coupon, :notice => 'EventsCoupon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @events_coupon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events_coupons/1
  # DELETE /events_coupons/1.xml
  def destroy
    @events_coupon = EventsCoupon.find(params[:id])
    @events_coupon.destroy

    respond_to do |format|
      format.html { redirect_to(events_coupons_url) }
      format.xml  { head :ok }
    end
  end
end

class PlacesWebsitesController < ApplicationController
  # GET /places_websites
  # GET /places_websites.xml
  def index
    @places_websites = PlacesWebsite.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @places_websites }
    end
  end

  # GET /places_websites/1
  # GET /places_websites/1.xml
  def show
    @places_website = PlacesWebsite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @places_website }
    end
  end

  # GET /places_websites/new
  # GET /places_websites/new.xml
  def new
    @places_website = PlacesWebsite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @places_website }
    end
  end

  # GET /places_websites/1/edit
  def edit
    @places_website = PlacesWebsite.find(params[:id])
  end

  # POST /places_websites
  # POST /places_websites.xml
  def create
    @places_website = PlacesWebsite.new(params[:places_website])

    respond_to do |format|
      if @places_website.save
        format.html { redirect_to(@places_website, :notice => 'PlacesWebsite was successfully created.') }
        format.xml  { render :xml => @places_website, :status => :created, :location => @places_website }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @places_website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /places_websites/1
  # PUT /places_websites/1.xml
  def update
    @places_website = PlacesWebsite.find(params[:id])

    respond_to do |format|
      if @places_website.update_attributes(params[:places_website])
        format.html { redirect_to(@places_website, :notice => 'PlacesWebsite was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @places_website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /places_websites/1
  # DELETE /places_websites/1.xml
  def destroy
    @places_website = PlacesWebsite.find(params[:id])
    @places_website.destroy

    respond_to do |format|
      format.html { redirect_to(places_websites_url) }
      format.xml  { head :ok }
    end
  end
end

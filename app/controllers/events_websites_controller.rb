class EventsWebsitesController < ApplicationController
  # GET /events_websites
  # GET /events_websites.xml
  def index
    @events_websites = EventsWebsite.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events_websites }
    end
  end

  # GET /events_websites/1
  # GET /events_websites/1.xml
  def show
    @events_website = EventsWebsite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @events_website }
    end
  end

  # GET /events_websites/new
  # GET /events_websites/new.xml
  def new
    @events_website = EventsWebsite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @events_website }
    end
  end

  # GET /events_websites/1/edit
  def edit
    @events_website = EventsWebsite.find(params[:id])
  end

  # POST /events_websites
  # POST /events_websites.xml
  def create
    @events_website = EventsWebsite.new(params[:events_website])

    respond_to do |format|
      if @events_website.save
        format.html { redirect_to(@events_website, :notice => 'EventsWebsite was successfully created.') }
        format.xml  { render :xml => @events_website, :status => :created, :location => @events_website }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @events_website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events_websites/1
  # PUT /events_websites/1.xml
  def update
    @events_website = EventsWebsite.find(params[:id])

    respond_to do |format|
      if @events_website.update_attributes(params[:events_website])
        format.html { redirect_to(@events_website, :notice => 'EventsWebsite was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @events_website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events_websites/1
  # DELETE /events_websites/1.xml
  def destroy
    @events_website = EventsWebsite.find(params[:id])
    @events_website.destroy

    respond_to do |format|
      format.html { redirect_to(events_websites_url) }
      format.xml  { head :ok }
    end
  end
end

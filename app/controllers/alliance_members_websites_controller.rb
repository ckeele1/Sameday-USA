class AllianceMembersWebsitesController < ApplicationController
  # GET /alliance_members_websites
  # GET /alliance_members_websites.xml
  def index
    @alliance_members_websites = AllianceMembersWebsite.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alliance_members_websites }
    end
  end

  # GET /alliance_members_websites/1
  # GET /alliance_members_websites/1.xml
  def show
    @alliance_members_website = AllianceMembersWebsite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alliance_members_website }
    end
  end

  # GET /alliance_members_websites/new
  # GET /alliance_members_websites/new.xml
  def new
    @alliance_members_website = AllianceMembersWebsite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alliance_members_website }
    end
  end

  # GET /alliance_members_websites/1/edit
  def edit
    @alliance_members_website = AllianceMembersWebsite.find(params[:id])
  end

  # POST /alliance_members_websites
  # POST /alliance_members_websites.xml
  def create
    @alliance_members_website = AllianceMembersWebsite.new(params[:alliance_members_website])

    respond_to do |format|
      if @alliance_members_website.save
        format.html { redirect_to(@alliance_members_website, :notice => 'AllianceMembersWebsite was successfully created.') }
        format.xml  { render :xml => @alliance_members_website, :status => :created, :location => @alliance_members_website }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alliance_members_website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alliance_members_websites/1
  # PUT /alliance_members_websites/1.xml
  def update
    @alliance_members_website = AllianceMembersWebsite.find(params[:id])

    respond_to do |format|
      if @alliance_members_website.update_attributes(params[:alliance_members_website])
        format.html { redirect_to(@alliance_members_website, :notice => 'AllianceMembersWebsite was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alliance_members_website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alliance_members_websites/1
  # DELETE /alliance_members_websites/1.xml
  def destroy
    @alliance_members_website = AllianceMembersWebsite.find(params[:id])
    @alliance_members_website.destroy

    respond_to do |format|
      format.html { redirect_to(alliance_members_websites_url) }
      format.xml  { head :ok }
    end
  end
end

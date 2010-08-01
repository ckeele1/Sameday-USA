class AllianceMembersHoursController < ApplicationController
  # GET /alliance_members_hours
  # GET /alliance_members_hours.xml
  def index
    @alliance_members_hours = AllianceMembersHour.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alliance_members_hours }
    end
  end

  # GET /alliance_members_hours/1
  # GET /alliance_members_hours/1.xml
  def show
    @alliance_members_hour = AllianceMembersHour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alliance_members_hour }
    end
  end

  # GET /alliance_members_hours/new
  # GET /alliance_members_hours/new.xml
  def new
    @alliance_members_hour = AllianceMembersHour.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alliance_members_hour }
    end
  end

  # GET /alliance_members_hours/1/edit
  def edit
    @alliance_members_hour = AllianceMembersHour.find(params[:id])
  end

  # POST /alliance_members_hours
  # POST /alliance_members_hours.xml
  def create
    @alliance_members_hour = AllianceMembersHour.new(params[:alliance_members_hour])

    respond_to do |format|
      if @alliance_members_hour.save
        format.html { redirect_to(@alliance_members_hour, :notice => 'AllianceMembersHour was successfully created.') }
        format.xml  { render :xml => @alliance_members_hour, :status => :created, :location => @alliance_members_hour }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alliance_members_hour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alliance_members_hours/1
  # PUT /alliance_members_hours/1.xml
  def update
    @alliance_members_hour = AllianceMembersHour.find(params[:id])

    respond_to do |format|
      if @alliance_members_hour.update_attributes(params[:alliance_members_hour])
        format.html { redirect_to(@alliance_members_hour, :notice => 'AllianceMembersHour was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alliance_members_hour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alliance_members_hours/1
  # DELETE /alliance_members_hours/1.xml
  def destroy
    @alliance_members_hour = AllianceMembersHour.find(params[:id])
    @alliance_members_hour.destroy

    respond_to do |format|
      format.html { redirect_to(alliance_members_hours_url) }
      format.xml  { head :ok }
    end
  end
end

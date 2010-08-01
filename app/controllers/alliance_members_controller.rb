class AllianceMembersController < ApplicationController
  # GET /alliance_members
  # GET /alliance_members.xml
  def index
    @alliance_members = AllianceMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alliance_members }
    end
  end

  # GET /alliance_members/1
  # GET /alliance_members/1.xml
  def show
    @alliance_member = AllianceMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alliance_member }
    end
  end

  # GET /alliance_members/new
  # GET /alliance_members/new.xml
  def new
    @alliance_member = AllianceMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alliance_member }
    end
  end

  # GET /alliance_members/1/edit
  def edit
    @alliance_member = AllianceMember.find(params[:id])
  end

  # POST /alliance_members
  # POST /alliance_members.xml
  def create
    @alliance_member = AllianceMember.new(params[:alliance_member])

    respond_to do |format|
      if @alliance_member.save
        format.html { redirect_to(@alliance_member, :notice => 'AllianceMember was successfully created.') }
        format.xml  { render :xml => @alliance_member, :status => :created, :location => @alliance_member }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alliance_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alliance_members/1
  # PUT /alliance_members/1.xml
  def update
    @alliance_member = AllianceMember.find(params[:id])

    respond_to do |format|
      if @alliance_member.update_attributes(params[:alliance_member])
        format.html { redirect_to(@alliance_member, :notice => 'AllianceMember was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alliance_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alliance_members/1
  # DELETE /alliance_members/1.xml
  def destroy
    @alliance_member = AllianceMember.find(params[:id])
    @alliance_member.destroy

    respond_to do |format|
      format.html { redirect_to(alliance_members_url) }
      format.xml  { head :ok }
    end
  end
end

class AllianceMembersNumbersController < ApplicationController
  # GET /alliance_members_numbers
  # GET /alliance_members_numbers.xml
  def index
    @alliance_members_numbers = AllianceMembersNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alliance_members_numbers }
    end
  end

  # GET /alliance_members_numbers/1
  # GET /alliance_members_numbers/1.xml
  def show
    @alliance_members_number = AllianceMembersNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alliance_members_number }
    end
  end

  # GET /alliance_members_numbers/new
  # GET /alliance_members_numbers/new.xml
  def new
    @alliance_members_number = AllianceMembersNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alliance_members_number }
    end
  end

  # GET /alliance_members_numbers/1/edit
  def edit
    @alliance_members_number = AllianceMembersNumber.find(params[:id])
  end

  # POST /alliance_members_numbers
  # POST /alliance_members_numbers.xml
  def create
    @alliance_members_number = AllianceMembersNumber.new(params[:alliance_members_number])

    respond_to do |format|
      if @alliance_members_number.save
        format.html { redirect_to(@alliance_members_number, :notice => 'AllianceMembersNumber was successfully created.') }
        format.xml  { render :xml => @alliance_members_number, :status => :created, :location => @alliance_members_number }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alliance_members_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alliance_members_numbers/1
  # PUT /alliance_members_numbers/1.xml
  def update
    @alliance_members_number = AllianceMembersNumber.find(params[:id])

    respond_to do |format|
      if @alliance_members_number.update_attributes(params[:alliance_members_number])
        format.html { redirect_to(@alliance_members_number, :notice => 'AllianceMembersNumber was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alliance_members_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alliance_members_numbers/1
  # DELETE /alliance_members_numbers/1.xml
  def destroy
    @alliance_members_number = AllianceMembersNumber.find(params[:id])
    @alliance_members_number.destroy

    respond_to do |format|
      format.html { redirect_to(alliance_members_numbers_url) }
      format.xml  { head :ok }
    end
  end
end

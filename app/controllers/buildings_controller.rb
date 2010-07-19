class BuildingsController < ApplicationController

  access_control do
    allow :owner, :of => Building
    allow anonymous, logged_in, :to => [:show, :index]
    allow :editor
    allow :administrator
  end

  def index
    @buildings = Building.search({:name => params["name"], :building_code => params["building-code"]})

    respond_to do |format|
      format.html { @buildings = @buildings.paginate :page => params[:page], :per_page => 20 }
			format.xml
    end
  end

  def show
    @building = Building.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @building = Building.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def create
    @building = Building.new(params[:building])

    respond_to do |format|
      if @building.save
        flash[:notice] = 'Building was successfully created.'
        format.html { redirect_to(@building) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @building = Building.find(params[:id])

    respond_to do |format|
      if @building.update_attributes(params[:building])
        flash[:notice] = 'Building was successfully updated.'
        format.html { redirect_to(@building) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy

    respond_to do |format|
      format.html { redirect_to(buildings_url) }
    end
  end

end
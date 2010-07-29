class EmailsPlacesController < ApplicationController
  # GET /emails_places
  # GET /emails_places.xml
  def index
    @emails_places = EmailsPlace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @emails_places }
    end
  end

  # GET /emails_places/1
  # GET /emails_places/1.xml
  def show
    @emails_place = EmailsPlace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @emails_place }
    end
  end

  # GET /emails_places/new
  # GET /emails_places/new.xml
  def new
    @emails_place = EmailsPlace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emails_place }
    end
  end

  # GET /emails_places/1/edit
  def edit
    @emails_place = EmailsPlace.find(params[:id])
  end

  # POST /emails_places
  # POST /emails_places.xml
  def create
    @emails_place = EmailsPlace.new(params[:emails_place])

    respond_to do |format|
      if @emails_place.save
        format.html { redirect_to(@emails_place, :notice => 'EmailsPlace was successfully created.') }
        format.xml  { render :xml => @emails_place, :status => :created, :location => @emails_place }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @emails_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emails_places/1
  # PUT /emails_places/1.xml
  def update
    @emails_place = EmailsPlace.find(params[:id])

    respond_to do |format|
      if @emails_place.update_attributes(params[:emails_place])
        format.html { redirect_to(@emails_place, :notice => 'EmailsPlace was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emails_place.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emails_places/1
  # DELETE /emails_places/1.xml
  def destroy
    @emails_place = EmailsPlace.find(params[:id])
    @emails_place.destroy

    respond_to do |format|
      format.html { redirect_to(emails_places_url) }
      format.xml  { head :ok }
    end
  end
end

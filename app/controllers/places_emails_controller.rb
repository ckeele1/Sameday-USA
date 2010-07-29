class PlacesEmailsController < ApplicationController
  # GET /places_emails
  # GET /places_emails.xml
  def index
    @places_emails = PlacesEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @places_emails }
    end
  end

  # GET /places_emails/1
  # GET /places_emails/1.xml
  def show
    @places_email = PlacesEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @places_email }
    end
  end

  # GET /places_emails/new
  # GET /places_emails/new.xml
  def new
    @places_email = PlacesEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @places_email }
    end
  end

  # GET /places_emails/1/edit
  def edit
    @places_email = PlacesEmail.find(params[:id])
  end

  # POST /places_emails
  # POST /places_emails.xml
  def create
    @places_email = PlacesEmail.new(params[:places_email])

    respond_to do |format|
      if @places_email.save
        format.html { redirect_to(@places_email, :notice => 'PlacesEmail was successfully created.') }
        format.xml  { render :xml => @places_email, :status => :created, :location => @places_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @places_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /places_emails/1
  # PUT /places_emails/1.xml
  def update
    @places_email = PlacesEmail.find(params[:id])

    respond_to do |format|
      if @places_email.update_attributes(params[:places_email])
        format.html { redirect_to(@places_email, :notice => 'PlacesEmail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @places_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /places_emails/1
  # DELETE /places_emails/1.xml
  def destroy
    @places_email = PlacesEmail.find(params[:id])
    @places_email.destroy

    respond_to do |format|
      format.html { redirect_to(places_emails_url) }
      format.xml  { head :ok }
    end
  end
end

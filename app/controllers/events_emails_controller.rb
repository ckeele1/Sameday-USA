class EventsEmailsController < ApplicationController
  # GET /events_emails
  # GET /events_emails.xml
  def index
    @events_emails = EventsEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events_emails }
    end
  end

  # GET /events_emails/1
  # GET /events_emails/1.xml
  def show
    @events_email = EventsEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @events_email }
    end
  end

  # GET /events_emails/new
  # GET /events_emails/new.xml
  def new
    @events_email = EventsEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @events_email }
    end
  end

  # GET /events_emails/1/edit
  def edit
    @events_email = EventsEmail.find(params[:id])
  end

  # POST /events_emails
  # POST /events_emails.xml
  def create
    @events_email = EventsEmail.new(params[:events_email])

    respond_to do |format|
      if @events_email.save
        format.html { redirect_to(@events_email, :notice => 'EventsEmail was successfully created.') }
        format.xml  { render :xml => @events_email, :status => :created, :location => @events_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @events_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events_emails/1
  # PUT /events_emails/1.xml
  def update
    @events_email = EventsEmail.find(params[:id])

    respond_to do |format|
      if @events_email.update_attributes(params[:events_email])
        format.html { redirect_to(@events_email, :notice => 'EventsEmail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @events_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events_emails/1
  # DELETE /events_emails/1.xml
  def destroy
    @events_email = EventsEmail.find(params[:id])
    @events_email.destroy

    respond_to do |format|
      format.html { redirect_to(events_emails_url) }
      format.xml  { head :ok }
    end
  end
end

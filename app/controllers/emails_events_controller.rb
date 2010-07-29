class EmailsEventsController < ApplicationController
  # GET /emails_events
  # GET /emails_events.xml
  def index
    @emails_events = EmailsEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @emails_events }
    end
  end

  # GET /emails_events/1
  # GET /emails_events/1.xml
  def show
    @emails_event = EmailsEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @emails_event }
    end
  end

  # GET /emails_events/new
  # GET /emails_events/new.xml
  def new
    @emails_event = EmailsEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emails_event }
    end
  end

  # GET /emails_events/1/edit
  def edit
    @emails_event = EmailsEvent.find(params[:id])
  end

  # POST /emails_events
  # POST /emails_events.xml
  def create
    @emails_event = EmailsEvent.new(params[:emails_event])

    respond_to do |format|
      if @emails_event.save
        format.html { redirect_to(@emails_event, :notice => 'EmailsEvent was successfully created.') }
        format.xml  { render :xml => @emails_event, :status => :created, :location => @emails_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @emails_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emails_events/1
  # PUT /emails_events/1.xml
  def update
    @emails_event = EmailsEvent.find(params[:id])

    respond_to do |format|
      if @emails_event.update_attributes(params[:emails_event])
        format.html { redirect_to(@emails_event, :notice => 'EmailsEvent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emails_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emails_events/1
  # DELETE /emails_events/1.xml
  def destroy
    @emails_event = EmailsEvent.find(params[:id])
    @emails_event.destroy

    respond_to do |format|
      format.html { redirect_to(emails_events_url) }
      format.xml  { head :ok }
    end
  end
end

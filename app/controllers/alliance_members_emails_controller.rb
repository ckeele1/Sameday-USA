class AllianceMembersEmailsController < ApplicationController
  # GET /alliance_members_emails
  # GET /alliance_members_emails.xml
  def index
    @alliance_members_emails = AllianceMembersEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alliance_members_emails }
    end
  end

  # GET /alliance_members_emails/1
  # GET /alliance_members_emails/1.xml
  def show
    @alliance_members_email = AllianceMembersEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alliance_members_email }
    end
  end

  # GET /alliance_members_emails/new
  # GET /alliance_members_emails/new.xml
  def new
    @alliance_members_email = AllianceMembersEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alliance_members_email }
    end
  end

  # GET /alliance_members_emails/1/edit
  def edit
    @alliance_members_email = AllianceMembersEmail.find(params[:id])
  end

  # POST /alliance_members_emails
  # POST /alliance_members_emails.xml
  def create
    @alliance_members_email = AllianceMembersEmail.new(params[:alliance_members_email])

    respond_to do |format|
      if @alliance_members_email.save
        format.html { redirect_to(@alliance_members_email, :notice => 'AllianceMembersEmail was successfully created.') }
        format.xml  { render :xml => @alliance_members_email, :status => :created, :location => @alliance_members_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alliance_members_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alliance_members_emails/1
  # PUT /alliance_members_emails/1.xml
  def update
    @alliance_members_email = AllianceMembersEmail.find(params[:id])

    respond_to do |format|
      if @alliance_members_email.update_attributes(params[:alliance_members_email])
        format.html { redirect_to(@alliance_members_email, :notice => 'AllianceMembersEmail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alliance_members_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alliance_members_emails/1
  # DELETE /alliance_members_emails/1.xml
  def destroy
    @alliance_members_email = AllianceMembersEmail.find(params[:id])
    @alliance_members_email.destroy

    respond_to do |format|
      format.html { redirect_to(alliance_members_emails_url) }
      format.xml  { head :ok }
    end
  end
end

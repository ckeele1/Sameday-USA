class UserActivitiesController < ApplicationController
  # GET /user_activities
  # GET /user_activities.xml
  def index
    @user_activities = UserActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_activities }
    end
  end

  # GET /user_activities/1
  # GET /user_activities/1.xml
  def show
    @user_activity = UserActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_activity }
    end
  end

  # GET /user_activities/new
  # GET /user_activities/new.xml
  def new
    @user_activity = UserActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_activity }
    end
  end

  # GET /user_activities/1/edit
  def edit
    @user_activity = UserActivity.find(params[:id])
  end

  # POST /user_activities
  # POST /user_activities.xml
  def create
    @user_activity = UserActivity.new(params[:user_activity])

    respond_to do |format|
      if @user_activity.save
        format.html { redirect_to(@user_activity, :notice => 'UserActivity was successfully created.') }
        format.xml  { render :xml => @user_activity, :status => :created, :location => @user_activity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_activity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_activities/1
  # PUT /user_activities/1.xml
  def update
    @user_activity = UserActivity.find(params[:id])

    respond_to do |format|
      if @user_activity.update_attributes(params[:user_activity])
        format.html { redirect_to(@user_activity, :notice => 'UserActivity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_activity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_activities/1
  # DELETE /user_activities/1.xml
  def destroy
    @user_activity = UserActivity.find(params[:id])
    @user_activity.destroy

    respond_to do |format|
      format.html { redirect_to(user_activities_url) }
      format.xml  { head :ok }
    end
  end
end

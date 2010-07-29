class DateBreaksController < ApplicationController
  # GET /date_breaks
  # GET /date_breaks.xml
  def index
    @date_breaks = DateBreak.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @date_breaks }
    end
  end

  # GET /date_breaks/1
  # GET /date_breaks/1.xml
  def show
    @date_break = DateBreak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @date_break }
    end
  end

  # GET /date_breaks/new
  # GET /date_breaks/new.xml
  def new
    @date_break = DateBreak.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @date_break }
    end
  end

  # GET /date_breaks/1/edit
  def edit
    @date_break = DateBreak.find(params[:id])
  end

  # POST /date_breaks
  # POST /date_breaks.xml
  def create
    @date_break = DateBreak.new(params[:date_break])

    respond_to do |format|
      if @date_break.save
        format.html { redirect_to(@date_break, :notice => 'DateBreak was successfully created.') }
        format.xml  { render :xml => @date_break, :status => :created, :location => @date_break }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @date_break.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /date_breaks/1
  # PUT /date_breaks/1.xml
  def update
    @date_break = DateBreak.find(params[:id])

    respond_to do |format|
      if @date_break.update_attributes(params[:date_break])
        format.html { redirect_to(@date_break, :notice => 'DateBreak was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @date_break.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /date_breaks/1
  # DELETE /date_breaks/1.xml
  def destroy
    @date_break = DateBreak.find(params[:id])
    @date_break.destroy

    respond_to do |format|
      format.html { redirect_to(date_breaks_url) }
      format.xml  { head :ok }
    end
  end
end

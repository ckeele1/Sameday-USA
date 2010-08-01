class GroupsTablesController < ApplicationController
  # GET /groups_tables
  # GET /groups_tables.xml
  def index
    @groups_tables = GroupsTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groups_tables }
    end
  end

  # GET /groups_tables/1
  # GET /groups_tables/1.xml
  def show
    @groups_table = GroupsTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @groups_table }
    end
  end

  # GET /groups_tables/new
  # GET /groups_tables/new.xml
  def new
    @groups_table = GroupsTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @groups_table }
    end
  end

  # GET /groups_tables/1/edit
  def edit
    @groups_table = GroupsTable.find(params[:id])
  end

  # POST /groups_tables
  # POST /groups_tables.xml
  def create
    @groups_table = GroupsTable.new(params[:groups_table])

    respond_to do |format|
      if @groups_table.save
        format.html { redirect_to(@groups_table, :notice => 'GroupsTable was successfully created.') }
        format.xml  { render :xml => @groups_table, :status => :created, :location => @groups_table }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @groups_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groups_tables/1
  # PUT /groups_tables/1.xml
  def update
    @groups_table = GroupsTable.find(params[:id])

    respond_to do |format|
      if @groups_table.update_attributes(params[:groups_table])
        format.html { redirect_to(@groups_table, :notice => 'GroupsTable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @groups_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groups_tables/1
  # DELETE /groups_tables/1.xml
  def destroy
    @groups_table = GroupsTable.find(params[:id])
    @groups_table.destroy

    respond_to do |format|
      format.html { redirect_to(groups_tables_url) }
      format.xml  { head :ok }
    end
  end
end

class TrackableItemsController < ApplicationController
  # GET /trackable_items
  # GET /trackable_items.xml
  def index
    @trackable_items = TrackableItem.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trackable_items }
    end
  end

  # GET /trackable_items/1
  # GET /trackable_items/1.xml
  def show
    @trackable_item = TrackableItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trackable_item }
    end
  end

  # GET /trackable_items/new
  # GET /trackable_items/new.xml
  def new
    @trackable_item = TrackableItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trackable_item }
    end
  end

  # GET /trackable_items/1/edit
  def edit
    @trackable_item = TrackableItem.find(params[:id])
  end

  # POST /trackable_items
  # POST /trackable_items.xml
  def create
    @trackable_item = TrackableItem.new(params[:trackable_item])

    respond_to do |format|
      if @trackable_item.save
        flash[:notice] = 'TrackableItem was successfully created.'
        format.html { redirect_to(@trackable_item) }
        format.xml  { render :xml => @trackable_item, :status => :created, :location => @trackable_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trackable_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trackable_items/1
  # PUT /trackable_items/1.xml
  def update
    @trackable_item = TrackableItem.find(params[:id])

    respond_to do |format|
      if @trackable_item.update_attributes(params[:trackable_item])
        flash[:notice] = 'TrackableItem was successfully updated.'
        format.html { redirect_to(@trackable_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trackable_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trackable_items/1
  # DELETE /trackable_items/1.xml
  def destroy
    @trackable_item = TrackableItem.find(params[:id])
    @trackable_item.destroy

    respond_to do |format|
      format.html { redirect_to(trackable_items_url) }
      format.xml  { head :ok }
    end
  end
end

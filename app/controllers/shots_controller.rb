class ShotsController < ApplicationController
  # GET /shots
  # GET /shots.xml
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shots }
    end
  end
  
  def displayall
    @shots = Shot.all

    respond_to do |format|
      format.html
      format.xml  { render :xml => @shots }
    end
  end
  
  def search
    
  end
  
  def results
    @tape_id = params[:tape_id]
    if !@tape_id.nil?
      @shots = Shot.find(:all, :conditions => { :tape_id => @tape_id })
      if @shots.empty?
       puts "unable to find any matching records"
      else
       puts "search successful"
      end
      #redirect_to :action => 'search', :shots => @shots
    end
    respond_to do |format|
      format.js
    end
  end
  
  # GET /shots/1
  # GET /shots/1.xml
  def show
    @shot = Shot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shot }
    end
  end

  # GET /shots/new
  # GET /shots/new.xml
  def new
    @shot = Shot.new
    @universities = University.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shot }
    end
  end

  # GET /shots/1/edit
  def edit
    @shot = Shot.find(params[:id])
  end

  # POST /shots
  # POST /shots.xml
  def create
    @shot = Shot.new(params[:shot])

    respond_to do |format|
      if @shot.save
        flash[:notice] = 'Shot was successfully created.'
        format.html { redirect_to(@shot) }
        format.xml  { render :xml => @shot, :status => :created, :location => @shot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shots/1
  # PUT /shots/1.xml
  def update
    @shot = Shot.find(params[:id])

    respond_to do |format|
      if @shot.update_attributes(params[:shot])
        flash[:notice] = 'Shot was successfully updated.'
        format.html { redirect_to(@shot) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shots/1
  # DELETE /shots/1.xml
  def destroy
    @shot = Shot.find(params[:id])
    @shot.destroy

    respond_to do |format|
      format.html { redirect_to(shots_url) }
      format.xml  { head :ok }
    end
  end
end

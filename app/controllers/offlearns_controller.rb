class OfflearnsController < ApplicationController
  # GET /offlearns
  # GET /offlearns.xml
  def index
    @offlearns = Offlearn.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @offlearns }
    end
  end

  # GET /offlearns/1
  # GET /offlearns/1.xml
  def show
    @offlearn = Offlearn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @offlearn }
    end
  end

  # GET /offlearns/new
  # GET /offlearns/new.xml
  def new
    @offlearn = Offlearn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @offlearn }
    end
  end

  # GET /offlearns/1/edit
  def edit
    @offlearn = Offlearn.find(params[:id])
  end

  # POST /offlearns
  # POST /offlearns.xml
  def create
    @offlearn = Offlearn.new(params[:offlearn])

    respond_to do |format|
      if @offlearn.save
        flash[:notice] = 'Offlearn was successfully created.'
        format.html { redirect_to(@offlearn) }
        format.xml  { render :xml => @offlearn, :status => :created, :location => @offlearn }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @offlearn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /offlearns/1
  # PUT /offlearns/1.xml
  def update
    @offlearn = Offlearn.find(params[:id])

    respond_to do |format|
      if @offlearn.update_attributes(params[:offlearn])
        flash[:notice] = 'Offlearn was successfully updated.'
        format.html { redirect_to(@offlearn) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @offlearn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /offlearns/1
  # DELETE /offlearns/1.xml
  def destroy
    @offlearn = Offlearn.find(params[:id])
    @offlearn.destroy

    respond_to do |format|
      format.html { redirect_to(offlearns_url) }
      format.xml  { head :ok }
    end
  end
end

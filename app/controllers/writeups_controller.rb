class WriteupsController < ApplicationController
  # GET /writeups
  # GET /writeups.json
  def index
    @writeups = Writeup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @writeups }
    end
  end

  # GET /writeups/1
  # GET /writeups/1.json
  def show
    @writeup = Writeup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @writeup }
    end
  end

  # GET /writeups/new
  # GET /writeups/new.json
  def new
    @writeup = Writeup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @writeup }
    end
  end

  # GET /writeups/1/edit
  def edit
    @writeup = Writeup.find(params[:id])
  end

  # POST /writeups
  # POST /writeups.json
  def create
    @writeup = Writeup.new(params[:writeup])

    respond_to do |format|
      if @writeup.save
        format.html { redirect_to @writeup, :notice => 'Writeup was successfully created.' }
        format.json { render :json => @writeup, :status => :created, :location => @writeup }
      else
        format.html { render :action => "new" }
        format.json { render :json => @writeup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /writeups/1
  # PUT /writeups/1.json
  def update
    @writeup = Writeup.find(params[:id])

    respond_to do |format|
      if @writeup.update_attributes(params[:writeup])
        format.html { redirect_to @writeup, :notice => 'Writeup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @writeup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /writeups/1
  # DELETE /writeups/1.json
  def destroy
    @writeup = Writeup.find(params[:id])
    @writeup.destroy

    respond_to do |format|
      format.html { redirect_to writeups_url }
      format.json { head :no_content }
    end
  end
end

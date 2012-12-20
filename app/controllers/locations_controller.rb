class LocationsController < ApplicationController
  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.order('title')
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    @location = Location.find(params[:id])
  end

  # GET /locations/new
  # GET /locations/new.json
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(params[:location])
    if @location.save
      redirect_to locations_path, notice: 'Location was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /locations/1
  # PUT /locations/1.json
  def update
    @location = Location.find(params[:id])

    if @location.update_attributes(params[:location])
      redirect_to locations_path, notice: 'Location was successfully updated.' 
    else
      render action: "edit"
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_url 
  end
end

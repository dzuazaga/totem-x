class TotemLocationsController < ApplicationController
  before_action :set_totem_location, only: [:show, :edit, :update, :destroy]

  # GET /totem_locations
  # GET /totem_locations.json
  def index
    @totem_locations = TotemLocation.all
  end

  # GET /totem_locations/1
  # GET /totem_locations/1.json
  def show
  end

  # GET /totem_locations/new
  def new
    @totem_location = TotemLocation.new
  end

  # GET /totem_locations/1/edit
  def edit
  end

  # POST /totem_locations
  # POST /totem_locations.json
  def create
    @totem_location = TotemLocation.new(totem_location_params)

    respond_to do |format|
      if @totem_location.save
        format.html { redirect_to @totem_location, notice: 'Totem location was successfully created.' }
        format.json { render action: 'show', status: :created, location: @totem_location }
      else
        format.html { render action: 'new' }
        format.json { render json: @totem_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /totem_locations/1
  # PATCH/PUT /totem_locations/1.json
  def update
    respond_to do |format|
      if @totem_location.update(totem_location_params)
        format.html { redirect_to @totem_location, notice: 'Totem location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @totem_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /totem_locations/1
  # DELETE /totem_locations/1.json
  def destroy
    @totem_location.destroy
    respond_to do |format|
      format.html { redirect_to totem_locations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_totem_location
      @totem_location = TotemLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def totem_location_params
      params.require(:totem_location).permit(:code, :name, :location, :description, :email)
    end
end

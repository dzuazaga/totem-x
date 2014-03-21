class TotemThingsController < ApplicationController
  before_action :set_totem_thing, only: [:show, :edit, :update, :destroy]

  # GET /totem_things
  # GET /totem_things.json
  def index
    @totem_things = TotemThing.all
  end

  # GET /totem_things/1
  # GET /totem_things/1.json
  def show
  end

  # GET /totem_things/new
  def new
    @totem_thing = TotemThing.new
  end

  # GET /totem_things/1/edit
  def edit
  end

  # POST /totem_things
  # POST /totem_things.json
  def create
    @totem_thing = TotemThing.new(totem_thing_params)

    respond_to do |format|
      if @totem_thing.save
        format.html { redirect_to @totem_thing, notice: 'Totem thing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @totem_thing }
      else
        format.html { render action: 'new' }
        format.json { render json: @totem_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /totem_things/1
  # PATCH/PUT /totem_things/1.json
  def update
    respond_to do |format|
      if @totem_thing.update(totem_thing_params)
        format.html { redirect_to @totem_thing, notice: 'Totem thing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @totem_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /totem_things/1
  # DELETE /totem_things/1.json
  def destroy
    @totem_thing.destroy
    respond_to do |format|
      format.html { redirect_to totem_things_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_totem_thing
      @totem_thing = TotemThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def totem_thing_params
      params.require(:totem_thing).permit(:code, :name)
    end
end

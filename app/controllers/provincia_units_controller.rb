class ProvinciaUnitsController < ApplicationController
  before_action :set_provincia_unit, only: [:show, :edit, :update, :destroy]

  # GET /provincia_units
  # GET /provincia_units.json
  def index
    @provincia_units = ProvinciaUnit.all
  end

  # GET /provincia_units/1
  # GET /provincia_units/1.json
  def show
  end

  # GET /provincia_units/new
  def new
    @provincia_unit = ProvinciaUnit.new
  end

  # GET /provincia_units/1/edit
  def edit
  end

  # POST /provincia_units
  # POST /provincia_units.json
  def create
    @provincia_unit = ProvinciaUnit.new(provincia_unit_params)

    respond_to do |format|
      if @provincia_unit.save
        format.html { redirect_to @provincia_unit, notice: 'Provincia unit was successfully created.' }
        format.json { render :show, status: :created, location: @provincia_unit }
      else
        format.html { render :new }
        format.json { render json: @provincia_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provincia_units/1
  # PATCH/PUT /provincia_units/1.json
  def update
    respond_to do |format|
      if @provincia_unit.update(provincia_unit_params)
        format.html { redirect_to @provincia_unit, notice: 'Provincia unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @provincia_unit }
      else
        format.html { render :edit }
        format.json { render json: @provincia_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provincia_units/1
  # DELETE /provincia_units/1.json
  def destroy
    @provincia_unit.destroy
    respond_to do |format|
      format.html { redirect_to provincia_units_url, notice: 'Provincia unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provincia_unit
      @provincia_unit = ProvinciaUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provincia_unit_params
      params.require(:provincia_unit).permit(:provincia_id, :region_id, :provincia_nombre)
    end
end

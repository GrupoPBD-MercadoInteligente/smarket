class ClaseUnitsController < ApplicationController
  before_action :set_clase_unit, only: [:show, :edit, :update, :destroy]

  # GET /clase_units
  # GET /clase_units.json
  def index
    @clase_units = ClaseUnit.all
  end

  # GET /clase_units/1
  # GET /clase_units/1.json
  def show
  end

  # GET /clase_units/new
  def new
    @clase_unit = ClaseUnit.new
  end

  # GET /clase_units/1/edit
  def edit
  end

  # POST /clase_units
  # POST /clase_units.json
  def create
    @clase_unit = ClaseUnit.new(clase_unit_params)

    respond_to do |format|
      if @clase_unit.save
        format.html { redirect_to @clase_unit, notice: 'Clase unit was successfully created.' }
        format.json { render :show, status: :created, location: @clase_unit }
      else
        format.html { render :new }
        format.json { render json: @clase_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clase_units/1
  # PATCH/PUT /clase_units/1.json
  def update
    respond_to do |format|
      if @clase_unit.update(clase_unit_params)
        format.html { redirect_to @clase_unit, notice: 'Clase unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @clase_unit }
      else
        format.html { render :edit }
        format.json { render json: @clase_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clase_units/1
  # DELETE /clase_units/1.json
  def destroy
    @clase_unit.destroy
    respond_to do |format|
      format.html { redirect_to clase_units_url, notice: 'Clase unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clase_unit
      @clase_unit = ClaseUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clase_unit_params
      params.require(:clase_unit).permit(:clase_id, :cla_clase_id, :clase_nombre)
    end
end

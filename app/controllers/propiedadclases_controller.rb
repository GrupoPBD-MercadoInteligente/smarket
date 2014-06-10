class PropiedadclasesController < ApplicationController
  before_action :set_propiedadclase, only: [:show, :edit, :update, :destroy]

  # GET /propiedadclases
  # GET /propiedadclases.json
  def index
    @propiedadclases = Propiedadclase.all
  end

  # GET /propiedadclases/1
  # GET /propiedadclases/1.json
  def show
  end

  # GET /propiedadclases/new
  def new
    @propiedadclase = Propiedadclase.new
  end

  # GET /propiedadclases/1/edit
  def edit
  end

  # POST /propiedadclases
  # POST /propiedadclases.json
  def create
    @propiedadclase = Propiedadclase.new(propiedadclase_params)

    respond_to do |format|
      if @propiedadclase.save
        format.html { redirect_to @propiedadclase, notice: 'Propiedadclase was successfully created.' }
        format.json { render :show, status: :created, location: @propiedadclase }
      else
        format.html { render :new }
        format.json { render json: @propiedadclase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propiedadclases/1
  # PATCH/PUT /propiedadclases/1.json
  def update
    respond_to do |format|
      if @propiedadclase.update(propiedadclase_params)
        format.html { redirect_to @propiedadclase, notice: 'Propiedadclase was successfully updated.' }
        format.json { render :show, status: :ok, location: @propiedadclase }
      else
        format.html { render :edit }
        format.json { render json: @propiedadclase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propiedadclases/1
  # DELETE /propiedadclases/1.json
  def destroy
    @propiedadclase.destroy
    respond_to do |format|
      format.html { redirect_to propiedadclases_url, notice: 'Propiedadclase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propiedadclase
      @propiedadclase = Propiedadclase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propiedadclase_params
      params.require(:propiedadclase).permit(:propiedad_id, :clase_id)
    end
end

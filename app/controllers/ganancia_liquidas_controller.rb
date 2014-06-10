class GananciaLiquidasController < ApplicationController
  before_action :set_ganancia_liquida, only: [:show, :edit, :update, :destroy]

  # GET /ganancia_liquidas
  # GET /ganancia_liquidas.json
  def index
    @ganancia_liquidas = GananciaLiquida.all
  end

  # GET /ganancia_liquidas/1
  # GET /ganancia_liquidas/1.json
  def show
  end

  # GET /ganancia_liquidas/new
  def new
    @ganancia_liquida = GananciaLiquida.new
  end

  # GET /ganancia_liquidas/1/edit
  def edit
  end

  # POST /ganancia_liquidas
  # POST /ganancia_liquidas.json
  def create
    @ganancia_liquida = GananciaLiquida.new(ganancia_liquida_params)

    respond_to do |format|
      if @ganancia_liquida.save
        format.html { redirect_to @ganancia_liquida, notice: 'Ganancia liquida was successfully created.' }
        format.json { render :show, status: :created, location: @ganancia_liquida }
      else
        format.html { render :new }
        format.json { render json: @ganancia_liquida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ganancia_liquidas/1
  # PATCH/PUT /ganancia_liquidas/1.json
  def update
    respond_to do |format|
      if @ganancia_liquida.update(ganancia_liquida_params)
        format.html { redirect_to @ganancia_liquida, notice: 'Ganancia liquida was successfully updated.' }
        format.json { render :show, status: :ok, location: @ganancia_liquida }
      else
        format.html { render :edit }
        format.json { render json: @ganancia_liquida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ganancia_liquidas/1
  # DELETE /ganancia_liquidas/1.json
  def destroy
    @ganancia_liquida.destroy
    respond_to do |format|
      format.html { redirect_to ganancia_liquidas_url, notice: 'Ganancia liquida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ganancia_liquida
      @ganancia_liquida = GananciaLiquida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ganancia_liquida_params
      params.require(:ganancia_liquida).permit(:ganancia_liquida_id, :transaccion_id, :ganancia_liquida_monto)
    end
end

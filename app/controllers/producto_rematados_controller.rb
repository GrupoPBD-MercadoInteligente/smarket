class ProductoRematadosController < ApplicationController
  before_action :set_producto_rematado, only: [:show, :edit, :update, :destroy]

  # GET /producto_rematados
  # GET /producto_rematados.json
  def index
    @producto_rematados = ProductoRematado.all
  end

  # GET /producto_rematados/1
  # GET /producto_rematados/1.json
  def show
  end

  # GET /producto_rematados/new
  def new
    @producto_rematado = ProductoRematado.new
  end

  # GET /producto_rematados/1/edit
  def edit
  end

  # POST /producto_rematados
  # POST /producto_rematados.json
  def create
    @producto_rematado = ProductoRematado.new(producto_rematado_params)

    respond_to do |format|
      if @producto_rematado.save
        format.html { redirect_to @producto_rematado, notice: 'Producto rematado was successfully created.' }
        format.json { render :show, status: :created, location: @producto_rematado }
      else
        format.html { render :new }
        format.json { render json: @producto_rematado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_rematados/1
  # PATCH/PUT /producto_rematados/1.json
  def update
    respond_to do |format|
      if @producto_rematado.update(producto_rematado_params)
        format.html { redirect_to @producto_rematado, notice: 'Producto rematado was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_rematado }
      else
        format.html { render :edit }
        format.json { render json: @producto_rematado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_rematados/1
  # DELETE /producto_rematados/1.json
  def destroy
    @producto_rematado.destroy
    respond_to do |format|
      format.html { redirect_to producto_rematados_url, notice: 'Producto rematado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_rematado
      @producto_rematado = ProductoRematado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_rematado_params
      params.require(:producto_rematado).permit(:producto_id, :prod_sub_id, :prod_sub_cantidad, :prod_sub_precio_unitario)
    end
end

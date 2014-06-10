class ProductoNecesitadosController < ApplicationController
  before_action :set_producto_necesitado, only: [:show, :edit, :update, :destroy]

  # GET /producto_necesitados
  # GET /producto_necesitados.json
  def index
    @producto_necesitados = ProductoNecesitado.all
  end

  # GET /producto_necesitados/1
  # GET /producto_necesitados/1.json
  def show
  end

  # GET /producto_necesitados/new
  def new
    @producto_necesitado = ProductoNecesitado.new
  end

  # GET /producto_necesitados/1/edit
  def edit
  end

  # POST /producto_necesitados
  # POST /producto_necesitados.json
  def create
    @producto_necesitado = ProductoNecesitado.new(producto_necesitado_params)

    respond_to do |format|
      if @producto_necesitado.save
        format.html { redirect_to @producto_necesitado, notice: 'Producto necesitado was successfully created.' }
        format.json { render :show, status: :created, location: @producto_necesitado }
      else
        format.html { render :new }
        format.json { render json: @producto_necesitado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_necesitados/1
  # PATCH/PUT /producto_necesitados/1.json
  def update
    respond_to do |format|
      if @producto_necesitado.update(producto_necesitado_params)
        format.html { redirect_to @producto_necesitado, notice: 'Producto necesitado was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_necesitado }
      else
        format.html { render :edit }
        format.json { render json: @producto_necesitado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_necesitados/1
  # DELETE /producto_necesitados/1.json
  def destroy
    @producto_necesitado.destroy
    respond_to do |format|
      format.html { redirect_to producto_necesitados_url, notice: 'Producto necesitado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_necesitado
      @producto_necesitado = ProductoNecesitado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_necesitado_params
      params.require(:producto_necesitado).permit(:producto_id, :prod_nec_id, :usuario_id, :prod_nec_cantidad, :prod_nec_preciotope, :prod_nec_fecha_publicacion)
    end
end

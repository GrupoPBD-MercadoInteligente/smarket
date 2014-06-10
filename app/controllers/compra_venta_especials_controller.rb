class CompraVentaEspecialsController < ApplicationController
  before_action :set_compra_venta_especial, only: [:show, :edit, :update, :destroy]

  # GET /compra_venta_especials
  # GET /compra_venta_especials.json
  def index
    @compra_venta_especials = CompraVentaEspecial.all
  end

  # GET /compra_venta_especials/1
  # GET /compra_venta_especials/1.json
  def show
  end

  # GET /compra_venta_especials/new
  def new
    @compra_venta_especial = CompraVentaEspecial.new
  end

  # GET /compra_venta_especials/1/edit
  def edit
  end

  # POST /compra_venta_especials
  # POST /compra_venta_especials.json
  def create
    @compra_venta_especial = CompraVentaEspecial.new(compra_venta_especial_params)

    respond_to do |format|
      if @compra_venta_especial.save
        format.html { redirect_to @compra_venta_especial, notice: 'Compra venta especial was successfully created.' }
        format.json { render :show, status: :created, location: @compra_venta_especial }
      else
        format.html { render :new }
        format.json { render json: @compra_venta_especial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compra_venta_especials/1
  # PATCH/PUT /compra_venta_especials/1.json
  def update
    respond_to do |format|
      if @compra_venta_especial.update(compra_venta_especial_params)
        format.html { redirect_to @compra_venta_especial, notice: 'Compra venta especial was successfully updated.' }
        format.json { render :show, status: :ok, location: @compra_venta_especial }
      else
        format.html { render :edit }
        format.json { render json: @compra_venta_especial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compra_venta_especials/1
  # DELETE /compra_venta_especials/1.json
  def destroy
    @compra_venta_especial.destroy
    respond_to do |format|
      format.html { redirect_to compra_venta_especials_url, notice: 'Compra venta especial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_venta_especial
      @compra_venta_especial = CompraVentaEspecial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_venta_especial_params
      params.require(:compra_venta_especial).permit(:tipo_trans_id, :compraventa_id, :usuario_id, :prod_of_nec_id, :usu_usuario_id, :compraventanor_fecha)
    end
end

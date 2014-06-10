class CompraVentaNormalsController < ApplicationController
  before_action :set_compra_venta_normal, only: [:show, :edit, :update, :destroy]

  # GET /compra_venta_normals
  # GET /compra_venta_normals.json
  def index
    @compra_venta_normals = CompraVentaNormal.all
  end

  # GET /compra_venta_normals/1
  # GET /compra_venta_normals/1.json
  def show
  end

  # GET /compra_venta_normals/new
  def new
    @compra_venta_normal = CompraVentaNormal.new
  end

  # GET /compra_venta_normals/1/edit
  def edit
  end

  # POST /compra_venta_normals
  # POST /compra_venta_normals.json
  def create
    @compra_venta_normal = CompraVentaNormal.new(compra_venta_normal_params)

    respond_to do |format|
      if @compra_venta_normal.save
        format.html { redirect_to @compra_venta_normal, notice: 'Compra venta normal was successfully created.' }
        format.json { render :show, status: :created, location: @compra_venta_normal }
      else
        format.html { render :new }
        format.json { render json: @compra_venta_normal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compra_venta_normals/1
  # PATCH/PUT /compra_venta_normals/1.json
  def update
    respond_to do |format|
      if @compra_venta_normal.update(compra_venta_normal_params)
        format.html { redirect_to @compra_venta_normal, notice: 'Compra venta normal was successfully updated.' }
        format.json { render :show, status: :ok, location: @compra_venta_normal }
      else
        format.html { render :edit }
        format.json { render json: @compra_venta_normal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compra_venta_normals/1
  # DELETE /compra_venta_normals/1.json
  def destroy
    @compra_venta_normal.destroy
    respond_to do |format|
      format.html { redirect_to compra_venta_normals_url, notice: 'Compra venta normal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_venta_normal
      @compra_venta_normal = CompraVentaNormal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_venta_normal_params
      params.require(:compra_venta_normal).permit(:tipo_trans_id, :compraventa_id2, :usuario_id, :usu_usuario_id, :producto_of_id, :compraventanor_fecha)
    end
end

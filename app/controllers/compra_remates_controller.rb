class CompraRematesController < ApplicationController
  before_action :set_compra_remate, only: [:show, :edit, :update, :destroy]

  # GET /compra_remates
  # GET /compra_remates.json
  def index
    @compra_remates = CompraRemate.all
  end

  # GET /compra_remates/1
  # GET /compra_remates/1.json
  def show
  end

  # GET /compra_remates/new
  def new
    @compra_remate = CompraRemate.new
  end

  # GET /compra_remates/1/edit
  def edit
  end

  # POST /compra_remates
  # POST /compra_remates.json
  def create
    @compra_remate = CompraRemate.new(compra_remate_params)

    respond_to do |format|
      if @compra_remate.save
        format.html { redirect_to @compra_remate, notice: 'Compra remate was successfully created.' }
        format.json { render :show, status: :created, location: @compra_remate }
      else
        format.html { render :new }
        format.json { render json: @compra_remate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compra_remates/1
  # PATCH/PUT /compra_remates/1.json
  def update
    respond_to do |format|
      if @compra_remate.update(compra_remate_params)
        format.html { redirect_to @compra_remate, notice: 'Compra remate was successfully updated.' }
        format.json { render :show, status: :ok, location: @compra_remate }
      else
        format.html { render :edit }
        format.json { render json: @compra_remate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compra_remates/1
  # DELETE /compra_remates/1.json
  def destroy
    @compra_remate.destroy
    respond_to do |format|
      format.html { redirect_to compra_remates_url, notice: 'Compra remate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_remate
      @compra_remate = CompraRemate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_remate_params
      params.require(:compra_remate).permit(:tipo_trans_id, :comprasubasta_id, :usuario_id, :prod_sub_id, :usu_usuario_id, :comprasubasta_fecha)
    end
end

class PujasController < ApplicationController
  before_action :set_puja, only: [:show, :edit, :update, :destroy]

  # GET /pujas
  # GET /pujas.json
  def index
    @pujas = Puja.all
  end

  # GET /pujas/1
  # GET /pujas/1.json
  def show
  end

  # GET /pujas/new
  def new
    @puja = Puja.new
  end

  # GET /pujas/1/edit
  def edit
  end

  # POST /pujas
  # POST /pujas.json
  def create
    @puja = Puja.new(puja_params)

    respond_to do |format|
      if @puja.save
        format.html { redirect_to @puja, notice: 'Puja was successfully created.' }
        format.json { render :show, status: :created, location: @puja }
      else
        format.html { render :new }
        format.json { render json: @puja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pujas/1
  # PATCH/PUT /pujas/1.json
  def update
    respond_to do |format|
      if @puja.update(puja_params)
        format.html { redirect_to @puja, notice: 'Puja was successfully updated.' }
        format.json { render :show, status: :ok, location: @puja }
      else
        format.html { render :edit }
        format.json { render json: @puja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pujas/1
  # DELETE /pujas/1.json
  def destroy
    @puja.destroy
    respond_to do |format|
      format.html { redirect_to pujas_url, notice: 'Puja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puja
      @puja = Puja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puja_params
      params.require(:puja).permit(:puja_id, :sub_id, :usuario_id, :puja_valor, :puja_correlativo)
    end
end

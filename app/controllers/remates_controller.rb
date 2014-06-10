class RematesController < ApplicationController
  before_action :set_remate, only: [:show, :edit, :update, :destroy]

  # GET /remates
  # GET /remates.json
  def index
    @remates = Remate.all
  end

  # GET /remates/1
  # GET /remates/1.json
  def show
  end

  # GET /remates/new
  def new
    @remate = Remate.new
  end

  # GET /remates/1/edit
  def edit
  end

  # POST /remates
  # POST /remates.json
  def create
    @remate = Remate.new(remate_params)

    respond_to do |format|
      if @remate.save
        format.html { redirect_to @remate, notice: 'Remate was successfully created.' }
        format.json { render :show, status: :created, location: @remate }
      else
        format.html { render :new }
        format.json { render json: @remate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remates/1
  # PATCH/PUT /remates/1.json
  def update
    respond_to do |format|
      if @remate.update(remate_params)
        format.html { redirect_to @remate, notice: 'Remate was successfully updated.' }
        format.json { render :show, status: :ok, location: @remate }
      else
        format.html { render :edit }
        format.json { render json: @remate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remates/1
  # DELETE /remates/1.json
  def destroy
    @remate.destroy
    respond_to do |format|
      format.html { redirect_to remates_url, notice: 'Remate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remate
      @remate = Remate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remate_params
      params.require(:remate).permit(:sub_id, :estado_subasta_id, :usuario_id, :prod_sub_id, :sub_monto_max, :sub_fecha_inicio, :sub_fecha_termino)
    end
end

class EstadoRematesController < ApplicationController
  before_action :set_estado_remate, only: [:show, :edit, :update, :destroy]

  # GET /estado_remates
  # GET /estado_remates.json
  def index
    @estado_remates = EstadoRemate.all
  end

  # GET /estado_remates/1
  # GET /estado_remates/1.json
  def show
  end

  # GET /estado_remates/new
  def new
    @estado_remate = EstadoRemate.new
  end

  # GET /estado_remates/1/edit
  def edit
  end

  # POST /estado_remates
  # POST /estado_remates.json
  def create
    @estado_remate = EstadoRemate.new(estado_remate_params)

    respond_to do |format|
      if @estado_remate.save
        format.html { redirect_to @estado_remate, notice: 'Estado remate was successfully created.' }
        format.json { render :show, status: :created, location: @estado_remate }
      else
        format.html { render :new }
        format.json { render json: @estado_remate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_remates/1
  # PATCH/PUT /estado_remates/1.json
  def update
    respond_to do |format|
      if @estado_remate.update(estado_remate_params)
        format.html { redirect_to @estado_remate, notice: 'Estado remate was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_remate }
      else
        format.html { render :edit }
        format.json { render json: @estado_remate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_remates/1
  # DELETE /estado_remates/1.json
  def destroy
    @estado_remate.destroy
    respond_to do |format|
      format.html { redirect_to estado_remates_url, notice: 'Estado remate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_remate
      @estado_remate = EstadoRemate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_remate_params
      params.require(:estado_remate).permit(:estado_subasta_id, :estado_subasta_nombre)
    end
end

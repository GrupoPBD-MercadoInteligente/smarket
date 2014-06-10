class EstadoNotificacionsController < ApplicationController
  before_action :set_estado_notificacion, only: [:show, :edit, :update, :destroy]

  # GET /estado_notificacions
  # GET /estado_notificacions.json
  def index
    @estado_notificacions = EstadoNotificacion.all
  end

  # GET /estado_notificacions/1
  # GET /estado_notificacions/1.json
  def show
  end

  # GET /estado_notificacions/new
  def new
    @estado_notificacion = EstadoNotificacion.new
  end

  # GET /estado_notificacions/1/edit
  def edit
  end

  # POST /estado_notificacions
  # POST /estado_notificacions.json
  def create
    @estado_notificacion = EstadoNotificacion.new(estado_notificacion_params)

    respond_to do |format|
      if @estado_notificacion.save
        format.html { redirect_to @estado_notificacion, notice: 'Estado notificacion was successfully created.' }
        format.json { render :show, status: :created, location: @estado_notificacion }
      else
        format.html { render :new }
        format.json { render json: @estado_notificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_notificacions/1
  # PATCH/PUT /estado_notificacions/1.json
  def update
    respond_to do |format|
      if @estado_notificacion.update(estado_notificacion_params)
        format.html { redirect_to @estado_notificacion, notice: 'Estado notificacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_notificacion }
      else
        format.html { render :edit }
        format.json { render json: @estado_notificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_notificacions/1
  # DELETE /estado_notificacions/1.json
  def destroy
    @estado_notificacion.destroy
    respond_to do |format|
      format.html { redirect_to estado_notificacions_url, notice: 'Estado notificacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_notificacion
      @estado_notificacion = EstadoNotificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_notificacion_params
      params.require(:estado_notificacion).permit(:estado_not_id, :estado_not_nombre)
    end
end

class ComisionsController < ApplicationController
  before_action :set_comision, only: [:show, :edit, :update, :destroy]

  # GET /comisions
  # GET /comisions.json
  def index
    @comisions = Comision.all
  end

  # GET /comisions/1
  # GET /comisions/1.json
  def show
  end

  # GET /comisions/new
  def new
    @comision = Comision.new
  end

  # GET /comisions/1/edit
  def edit
  end

  # POST /comisions
  # POST /comisions.json
  def create
    @comision = Comision.new(comision_params)

    respond_to do |format|
      if @comision.save
        format.html { redirect_to @comision, notice: 'Comision was successfully created.' }
        format.json { render :show, status: :created, location: @comision }
      else
        format.html { render :new }
        format.json { render json: @comision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comisions/1
  # PATCH/PUT /comisions/1.json
  def update
    respond_to do |format|
      if @comision.update(comision_params)
        format.html { redirect_to @comision, notice: 'Comision was successfully updated.' }
        format.json { render :show, status: :ok, location: @comision }
      else
        format.html { render :edit }
        format.json { render json: @comision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comisions/1
  # DELETE /comisions/1.json
  def destroy
    @comision.destroy
    respond_to do |format|
      format.html { redirect_to comisions_url, notice: 'Comision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comision
      @comision = Comision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comision_params
      params.require(:comision).permit(:comision_id, :transaccion_id, :comision_monto)
    end
end

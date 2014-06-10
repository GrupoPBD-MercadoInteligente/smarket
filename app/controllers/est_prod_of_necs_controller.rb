class EstProdOfNecsController < ApplicationController
  before_action :set_est_prod_of_nec, only: [:show, :edit, :update, :destroy]

  # GET /est_prod_of_necs
  # GET /est_prod_of_necs.json
  def index
    @est_prod_of_necs = EstProdOfNec.all
  end

  # GET /est_prod_of_necs/1
  # GET /est_prod_of_necs/1.json
  def show
  end

  # GET /est_prod_of_necs/new
  def new
    @est_prod_of_nec = EstProdOfNec.new
  end

  # GET /est_prod_of_necs/1/edit
  def edit
  end

  # POST /est_prod_of_necs
  # POST /est_prod_of_necs.json
  def create
    @est_prod_of_nec = EstProdOfNec.new(est_prod_of_nec_params)

    respond_to do |format|
      if @est_prod_of_nec.save
        format.html { redirect_to @est_prod_of_nec, notice: 'Est prod of nec was successfully created.' }
        format.json { render :show, status: :created, location: @est_prod_of_nec }
      else
        format.html { render :new }
        format.json { render json: @est_prod_of_nec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /est_prod_of_necs/1
  # PATCH/PUT /est_prod_of_necs/1.json
  def update
    respond_to do |format|
      if @est_prod_of_nec.update(est_prod_of_nec_params)
        format.html { redirect_to @est_prod_of_nec, notice: 'Est prod of nec was successfully updated.' }
        format.json { render :show, status: :ok, location: @est_prod_of_nec }
      else
        format.html { render :edit }
        format.json { render json: @est_prod_of_nec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /est_prod_of_necs/1
  # DELETE /est_prod_of_necs/1.json
  def destroy
    @est_prod_of_nec.destroy
    respond_to do |format|
      format.html { redirect_to est_prod_of_necs_url, notice: 'Est prod of nec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_est_prod_of_nec
      @est_prod_of_nec = EstProdOfNec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def est_prod_of_nec_params
      params.require(:est_prod_of_nec).permit(:estado_prod_of_necesidad_id, :estado_prod_of_necesidad_nombre)
    end
end

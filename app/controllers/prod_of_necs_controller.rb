class ProdOfNecsController < ApplicationController
  before_action :set_prod_of_nec, only: [:show, :edit, :update, :destroy]

  # GET /prod_of_necs
  # GET /prod_of_necs.json
  def index
    @prod_of_necs = ProdOfNec.all
  end

  # GET /prod_of_necs/1
  # GET /prod_of_necs/1.json
  def show
  end

  # GET /prod_of_necs/new
  def new
    @prod_of_nec = ProdOfNec.new
  end

  # GET /prod_of_necs/1/edit
  def edit
  end

  # POST /prod_of_necs
  # POST /prod_of_necs.json
  def create
    @prod_of_nec = ProdOfNec.new(prod_of_nec_params)

    respond_to do |format|
      if @prod_of_nec.save
        format.html { redirect_to @prod_of_nec, notice: 'Prod of nec was successfully created.' }
        format.json { render :show, status: :created, location: @prod_of_nec }
      else
        format.html { render :new }
        format.json { render json: @prod_of_nec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prod_of_necs/1
  # PATCH/PUT /prod_of_necs/1.json
  def update
    respond_to do |format|
      if @prod_of_nec.update(prod_of_nec_params)
        format.html { redirect_to @prod_of_nec, notice: 'Prod of nec was successfully updated.' }
        format.json { render :show, status: :ok, location: @prod_of_nec }
      else
        format.html { render :edit }
        format.json { render json: @prod_of_nec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prod_of_necs/1
  # DELETE /prod_of_necs/1.json
  def destroy
    @prod_of_nec.destroy
    respond_to do |format|
      format.html { redirect_to prod_of_necs_url, notice: 'Prod of nec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prod_of_nec
      @prod_of_nec = ProdOfNec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prod_of_nec_params
      params.require(:prod_of_nec).permit(:producto_id, :prod_of_nec_id, :usuario_id, :estado_prod_of_necesidad_id, :prod_nec_id, :prod_of_nec_cantidad, :prod_of_nec_precio_unitario, :prod_of_nec_fecha_publicacion)
    end
end

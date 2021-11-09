class BIndiceFacetasController < ApplicationController
  before_action :set_b_indice_faceta, only: %i[ show edit update destroy ]

  # GET /b_indice_facetas or /b_indice_facetas.json
  def index
    @coleccion = BIndiceFaceta.all
  end

  # GET /b_indice_facetas/1 or /b_indice_facetas/1.json
  def show
  end

  # GET /b_indice_facetas/new
  def new
    @objeto = BIndiceFaceta.new
  end

  # GET /b_indice_facetas/1/edit
  def edit
  end

  # POST /b_indice_facetas or /b_indice_facetas.json
  def create
    @objeto = BIndiceFaceta.new(b_indice_faceta_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "B indice faceta was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_indice_facetas/1 or /b_indice_facetas/1.json
  def update
    respond_to do |format|
      if @objeto.update(b_indice_faceta_params)
        format.html { redirect_to @objeto, notice: "B indice faceta was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_indice_facetas/1 or /b_indice_facetas/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to b_indice_facetas_url, notice: "B indice faceta was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_indice_faceta
      @objeto = BIndiceFaceta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def b_indice_faceta_params
      params.require(:b_indice_faceta).permit(:b_clave_faceta_id, :ref_class, :ref_id)
    end
end

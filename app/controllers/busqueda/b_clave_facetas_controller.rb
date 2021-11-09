class Busqueda::BClaveFacetasController < ApplicationController
  before_action :set_b_clave_faceta, only: %i[ show edit update destroy ]

  # GET /b_clave_facetas or /b_clave_facetas.json
  def index
    @coleccion = BClaveFaceta.all
  end

  # GET /b_clave_facetas/1 or /b_clave_facetas/1.json
  def show
  end

  # GET /b_clave_facetas/new
  def new
    @objeto = BClaveFaceta.new
  end

  # GET /b_clave_facetas/1/edit
  def edit
  end

  # POST /b_clave_facetas or /b_clave_facetas.json
  def create
    @objeto = BClaveFaceta.new(b_clave_faceta_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "B clave faceta was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_clave_facetas/1 or /b_clave_facetas/1.json
  def update
    respond_to do |format|
      if @objeto.update(b_clave_faceta_params)
        format.html { redirect_to @objeto, notice: "B clave faceta was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_clave_facetas/1 or /b_clave_facetas/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to b_clave_facetas_url, notice: "B clave faceta was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_clave_faceta
      @objeto = BClaveFaceta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def b_clave_faceta_params
      params.require(:b_clave_faceta).permit(:modelo, :campo, :valor)
    end
end

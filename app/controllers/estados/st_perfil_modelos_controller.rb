class StPerfilModelosController < ApplicationController
  before_action :set_st_perfil_modelo, only: %i[ show edit update destroy ]

  # GET /st_perfil_modelos or /st_perfil_modelos.json
  def index
    @st_perfil_modelos = StPerfilModelo.all
  end

  # GET /st_perfil_modelos/1 or /st_perfil_modelos/1.json
  def show
  end

  # GET /st_perfil_modelos/new
  def new
    @st_perfil_modelo = StPerfilModelo.new
  end

  # GET /st_perfil_modelos/1/edit
  def edit
  end

  # POST /st_perfil_modelos or /st_perfil_modelos.json
  def create
    @st_perfil_modelo = StPerfilModelo.new(st_perfil_modelo_params)

    respond_to do |format|
      if @st_perfil_modelo.save
        format.html { redirect_to @st_perfil_modelo, notice: "St perfil modelo was successfully created." }
        format.json { render :show, status: :created, location: @st_perfil_modelo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @st_perfil_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_perfil_modelos/1 or /st_perfil_modelos/1.json
  def update
    respond_to do |format|
      if @st_perfil_modelo.update(st_perfil_modelo_params)
        format.html { redirect_to @st_perfil_modelo, notice: "St perfil modelo was successfully updated." }
        format.json { render :show, status: :ok, location: @st_perfil_modelo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @st_perfil_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_perfil_modelos/1 or /st_perfil_modelos/1.json
  def destroy
    @st_perfil_modelo.destroy
    respond_to do |format|
      format.html { redirect_to st_perfil_modelos_url, notice: "St perfil modelo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_perfil_modelo
      @st_perfil_modelo = StPerfilModelo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def st_perfil_modelo_params
      params.require(:st_perfil_modelo).permit(:st_perfil_modelo, :rol, :ingresa_registros, :app_perfil_id)
    end
end

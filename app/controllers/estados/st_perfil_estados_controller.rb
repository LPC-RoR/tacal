class StPerfilEstadosController < ApplicationController
  before_action :set_st_perfil_estado, only: %i[ show edit update destroy ]

  # GET /st_perfil_estados or /st_perfil_estados.json
  def index
    @st_perfil_estados = StPerfilEstado.all
  end

  # GET /st_perfil_estados/1 or /st_perfil_estados/1.json
  def show
  end

  # GET /st_perfil_estados/new
  def new
    @st_perfil_estado = StPerfilEstado.new
  end

  # GET /st_perfil_estados/1/edit
  def edit
  end

  # POST /st_perfil_estados or /st_perfil_estados.json
  def create
    @st_perfil_estado = StPerfilEstado.new(st_perfil_estado_params)

    respond_to do |format|
      if @st_perfil_estado.save
        format.html { redirect_to @st_perfil_estado, notice: "St perfil estado was successfully created." }
        format.json { render :show, status: :created, location: @st_perfil_estado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @st_perfil_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_perfil_estados/1 or /st_perfil_estados/1.json
  def update
    respond_to do |format|
      if @st_perfil_estado.update(st_perfil_estado_params)
        format.html { redirect_to @st_perfil_estado, notice: "St perfil estado was successfully updated." }
        format.json { render :show, status: :ok, location: @st_perfil_estado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @st_perfil_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_perfil_estados/1 or /st_perfil_estados/1.json
  def destroy
    @st_perfil_estado.destroy
    respond_to do |format|
      format.html { redirect_to st_perfil_estados_url, notice: "St perfil estado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_perfil_estado
      @st_perfil_estado = StPerfilEstado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def st_perfil_estado_params
      params.require(:st_perfil_estado).permit(:st_perfil_estado, :rol, :st_perfil_modelo_id)
    end
end

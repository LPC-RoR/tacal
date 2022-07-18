class NivelEducacionalesController < ApplicationController
  before_action :set_nivel_educacional, only: %i[ show edit update destroy ]

  # GET /nivel_educacionales or /nivel_educacionales.json
  def index
    @coleccion = NivelEducacional.all
  end

  # GET /nivel_educacionales/1 or /nivel_educacionales/1.json
  def show
  end

  # GET /nivel_educacionales/new
  def new
    @objeto = NivelEducacional.new
  end

  # GET /nivel_educacionales/1/edit
  def edit
  end

  # POST /nivel_educacionales or /nivel_educacionales.json
  def create
    @objeto = NivelEducacional.new(nivel_educacional_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Nivel educacional was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nivel_educacionales/1 or /nivel_educacionales/1.json
  def update
    respond_to do |format|
      if @objeto.update(nivel_educacional_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Nivel educacional was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nivel_educacionales/1 or /nivel_educacionales/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Nivel educacional was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivel_educacional
      @objeto = NivelEducacional.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/tablas?id=#{get_elemento_id(controller_name, 'Nivel Educacional')}" 
    end

    # Only allow a list of trusted parameters through.
    def nivel_educacional_params
      params.require(:nivel_educacional).permit(:nivel_educacional)
    end
end

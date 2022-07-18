class NacionalidadesController < ApplicationController
  before_action :set_nacionalidad, only: %i[ show edit update destroy ]

  # GET /nacionalidades or /nacionalidades.json
  def index
    @coleccion = Nacionalidad.all
  end

  # GET /nacionalidades/1 or /nacionalidades/1.json
  def show
  end

  # GET /nacionalidades/new
  def new
    @objeto = Nacionalidad.new
  end

  # GET /nacionalidades/1/edit
  def edit
  end

  # POST /nacionalidades or /nacionalidades.json
  def create
    @objeto = Nacionalidad.new(nacionalidad_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Nacionalidad was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nacionalidades/1 or /nacionalidades/1.json
  def update
    respond_to do |format|
      if @objeto.update(nacionalidad_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Nacionalidad was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nacionalidades/1 or /nacionalidades/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Nacionalidad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nacionalidad
      @objeto = Nacionalidad.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/tablas?id=#{get_elemento_id(controller_name, 'Nacionalidades')}" 
    end

    # Only allow a list of trusted parameters through.
    def nacionalidad_params
      params.require(:nacionalidad).permit(:nacionalidad)
    end
end

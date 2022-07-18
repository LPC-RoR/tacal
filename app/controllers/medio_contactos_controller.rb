class MedioContactosController < ApplicationController
  before_action :set_medio_contacto, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /medio_contactos or /medio_contactos.json
  def index
    @coleccion = MedioContacto.all
  end

  # GET /medio_contactos/1 or /medio_contactos/1.json
  def show
  end

  # GET /medio_contactos/new
  def new
    @objeto = MedioContacto.new
  end

  # GET /medio_contactos/1/edit
  def edit
  end

  # POST /medio_contactos or /medio_contactos.json
  def create
    @objeto = MedioContacto.new(medio_contacto_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Medio contacto was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medio_contactos/1 or /medio_contactos/1.json
  def update
    respond_to do |format|
      if @objeto.update(medio_contacto_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Medio contacto was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medio_contactos/1 or /medio_contactos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Medio contacto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medio_contacto
      @objeto = MedioContacto.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/tablas?id=#{get_elemento_id(controller_name, 'Medios de Contacto')}" 
    end

    # Only allow a list of trusted parameters through.
    def medio_contacto_params
      params.require(:medio_contacto).permit(:medio_contacto)
    end
end

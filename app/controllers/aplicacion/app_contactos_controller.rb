class AppContactosController < ApplicationController
  before_action :set_app_contacto, only: %i[ show edit update destroy ]

  # GET /app_contactos or /app_contactos.json
  def index
    @coleccion = AppContacto.all
  end

  # GET /app_contactos/1 or /app_contactos/1.json
  def show
  end

  # GET /app_contactos/new
  def new
    @objeto = AppContacto.new
  end

  # GET /app_contactos/1/edit
  def edit
  end

  # POST /app_contactos or /app_contactos.json
  def create
    @objeto = AppContacto.new(app_contacto_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "App contacto was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_contactos/1 or /app_contactos/1.json
  def update
    respond_to do |format|
      if @objeto.update(app_contacto_params)
        format.html { redirect_to @objeto, notice: "App contacto was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_contactos/1 or /app_contactos/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to app_contactos_url, notice: "App contacto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_contacto
      @objeto = AppContacto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_contacto_params
      params.require(:app_contacto).permit(:nombre, :telefono, :email, :owner_class, :owner_id)
    end
end

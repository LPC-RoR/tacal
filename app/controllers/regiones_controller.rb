class RegionesController < ApplicationController
  before_action :set_region, only: %i[ show edit update destroy ]

  # GET /regiones or /regiones.json
  def index
    @coleccion = Region.all
  end

  # GET /regiones/1 or /regiones/1.json
  def show
  end

  # GET /regiones/new
  def new
    @objeto = Region.new
  end

  # GET /regiones/1/edit
  def edit
  end

  # POST /regiones or /regiones.json
  def create
    @objeto = Region.new(region_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Region was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regiones/1 or /regiones/1.json
  def update
    respond_to do |format|
      if @objeto.update(region_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Region was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regiones/1 or /regiones/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Region was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @objeto = Region.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/tablas?id=#{get_elemento_id(controller_name, 'Regiones')}" 
    end

    # Only allow a list of trusted parameters through.
    def region_params
      params.require(:region).permit(:region)
    end
end

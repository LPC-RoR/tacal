class EtniasController < ApplicationController
  before_action :set_etnia, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /etnias or /etnias.json
  def index
    @coleccion = Etnia.all
  end

  # GET /etnias/1 or /etnias/1.json
  def show
  end

  # GET /etnias/new
  def new
    @objeto = Etnia.new
  end

  # GET /etnias/1/edit
  def edit
  end

  # POST /etnias or /etnias.json
  def create
    @objeto = Etnia.new(etnia_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Etnia was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etnias/1 or /etnias/1.json
  def update
    respond_to do |format|
      if @objeto.update(etnia_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Etnia was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etnias/1 or /etnias/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Etnia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etnia
      @objeto = Etnia.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/tablas?id=#{get_elemento_id(controller_name, 'Etnias')}" 
    end

    # Only allow a list of trusted parameters through.
    def etnia_params
      params.require(:etnia).permit(:etnia)
    end
end

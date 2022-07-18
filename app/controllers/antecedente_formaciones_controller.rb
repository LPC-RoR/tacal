class AntecedenteFormacionesController < ApplicationController
  before_action :set_antecedente_formacion, only: %i[ show edit update destroy ]

  # GET /antecedente_formaciones or /antecedente_formaciones.json
  def index
    @coleccion = AntecedenteFormacion.all
  end

  # GET /antecedente_formaciones/1 or /antecedente_formaciones/1.json
  def show
  end

  # GET /antecedente_formaciones/new
  def new
    @objeto = AntecedenteFormacion.new(pcd_id: params['objeto_id'])
  end

  # GET /antecedente_formaciones/1/edit
  def edit
  end

  # POST /antecedente_formaciones or /antecedente_formaciones.json
  def create
    @objeto = AntecedenteFormacion.new(antecedente_formacion_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Antecedente formacion was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /antecedente_formaciones/1 or /antecedente_formaciones/1.json
  def update
    respond_to do |format|
      if @objeto.update(antecedente_formacion_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Antecedente formacion was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /antecedente_formaciones/1 or /antecedente_formaciones/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Antecedente formacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_antecedente_formacion
      @objeto = AntecedenteFormacion.find(params[:id])
    end

    def set_redireccion
      @redireccion = @objeto.pcd
    end

    # Only allow a list of trusted parameters through.
    def antecedente_formacion_params
      params.require(:antecedente_formacion).permit(:periodo, :titulo_grado, :institucion, :pcd_id)
    end
end

class FichasController < ApplicationController
  before_action :set_ficha, only: %i[ show edit update destroy ]

  # GET /fichas or /fichas.json
  def index
    @coleccion = Ficha.all
  end

  # GET /fichas/1 or /fichas/1.json
  def show
  end

  # GET /fichas/new
  def new
    @objeto = Ficha.new(pcd_id: params[:pcd_id], evaluador_id: current_usuario.id, fecha_entrevista: Date.today)
  end

  # GET /fichas/1/edit
  def edit
  end

  # POST /fichas or /fichas.json
  def create
    @objeto = Ficha.new(ficha_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Ficha was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fichas/1 or /fichas/1.json
  def update
    respond_to do |format|
      if @objeto.update(ficha_params)
        format.html { redirect_to @objeto, notice: "Ficha was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fichas/1 or /fichas/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to fichas_url, notice: "Ficha was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha
      @objeto = Ficha.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ficha_params
      params.require(:ficha).permit(:fecha_entrevista, :modalidad_entrevista, :evaluador_id, :puntualidad, :atento, :interesado, :motivado, :acompanates, :aseado, :vestimenta_acorde, :comunicacion_autonoma, :oral, :gestual, :escrita, :con_quien_vives, :quien_vives_otro, :municipalidad, :agrupacion, :familia, :comunidad_otros, :antecedentes_penales, :certificado_antecedentes, :antecedentes_consumo, :consumo_otros, :otros_diagnosticos, :ayuda_tecnica, :cual_ayuda, :atencion, :vestuario, :aseo_personal, :alimentacion, :control_esfinteres, :manejo_dinero, :movilidad, :uso_celular, :manejo_computacional, :otros, :idiomas, :documentos_legales_vigentes, :visa_trabajo_vigente, :objetivo, :experiencia_laboral, :laboral_formal, :laboral_informal, :otro_formal, :otro_informal, :profesion_titulo_tecnico, :intereses_laborales, :pcd_id)
    end
end

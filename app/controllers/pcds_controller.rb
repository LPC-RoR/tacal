class PcdsController < ApplicationController
  before_action :set_pcd, only: %i[ show edit update destroy ]

  # GET /pcds or /pcds.json
  def index
    @coleccion = Pcd.all
  end

  # GET /pcds/1 or /pcds/1.json
  def show
    @coleccion = {}
    @coleccion['diagnosticos'] = @objeto.diagnosticos
    @coleccion['medicamentos'] = @objeto.medicamentos
    @coleccion['antecedente_formaciones'] = @objeto.antecedente_formaciones
  end

  # GET /pcds/new
  def new
    @objeto = Pcd.new(estado: 'ingreso')
  end

  # GET /pcds/1/edit
  def edit
  end

  # POST /pcds or /pcds.json
  def create
    @objeto = Pcd.new(pcd_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pcd was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pcds/1 or /pcds/1.json
  def update
    respond_to do |format|
      if @objeto.update(pcd_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pcd was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcds/1 or /pcds/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Pcd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pcd
      @objeto = Pcd.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/st_bandejas?m=Pcd&e=ingreso" 
    end

    # Only allow a list of trusted parameters through.
    def pcd_params
      params.require(:pcd).permit(:rut, :apellido_paterno, :apellido_materno, :nombres, :fecha_nacimiento, :genero, :nacionalidad, :nivel_educacional, :educacion_completa, :profesion_oficio, :direccion, :comuna, :ciudad, :region, :telefono_personal, :telefono_casa, :correo_electronico, :acreditacion_discapacidad, :estado_civil, :numero_hijos, :responsabilidad_parental, :situacion_social, :interdicto, :etnia, :cuenta_rut, :condicionado, :conexion_internet, :proveedor_internet, :medio_contacto, :estado, :facebook, :instagram, :fisica, :sensorial_auditiva, :sensorial_visual, :psiquica, :intelectual, :experiencia_laboral, :ope_linea_productiva, :ope_bodega, :ope_aseo, :ope_logistica, :ope_pioneta, :ope_grua_horquilla, :otro_operario, :adm_rrhh, :adm_contabilidad, :adm_ventas, :adm_finanzas, :adm_general, :otro_administrativo, :interes_laboral_1, :interes_laboral_2, :interes_laboral_3, :nombre_referenciia, :empresa_referenciaa, :telefono_referencia, :email_referencia, :resultado, :destino)
    end
end

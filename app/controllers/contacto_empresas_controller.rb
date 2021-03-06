class ContactoEmpresasController < ApplicationController
  before_action :set_contacto_empresa, only: %i[ show edit update destroy cambio_estado ]
#  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /contacto_empresas or /contacto_empresas.json
  def index
    carga_sidebar_base(nombre_sidebar(controller_name), params[:id])

    if @elemento.despliegue == 'list'
      @coleccion = {}
      case @elemento.controlador
      when 'contacto_empresas'
        case @elemento.elemento
        when 'Mis ingresos'
          @perfil = perfil_activo
          if @perfil.contacto_empresas.all.count > 25
            @coleccion['contacto_empresas'] = @perfil.contacto_empresas.order(:createed_at).page(params[:page])
            @paginate = true
          else
            @coleccion['contacto_empresas'] = @perfil.contacto_empresas.order(:created_at)
            @paginate = false
          end
        end
      end
    end
  end

  # GET /contacto_empresas/1 or /contacto_empresas/1.json
  def show
    @coleccion = {}
    @coleccion['app_contactos'] = @objeto.contactos
  end

  # GET /contacto_empresas/new
  def new
    @objeto = perfil_activo.contacto_empresas.new(app_perfil_id: params[:id], estado: 'ingreso')
  end

  # GET /contacto_empresas/1/edit
  def edit
  end

  # POST /contacto_empresas or /contacto_empresas.json
  def create
    @objeto = ContactoEmpresa.new(contacto_empresa_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Contacto empresa was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacto_empresas/1 or /contacto_empresas/1.json
  def update
    respond_to do |format|
      if @objeto.update(contacto_empresa_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Contacto empresa was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  def cambio_estado
    StLog.create(perfil_id: current_usuario.id, class_name: @objeto.class.name, objeto_id: @objeto.id, e_origen: @objeto.estado, e_destino: params[:st])

    @objeto.estado = params[:st]
    @objeto.save


    redirect_to "/st_bandejas?m=#{@objeto.class.name}&e=#{@objeto.estado}"
  end

  # DELETE /contacto_empresas/1 or /contacto_empresas/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Contacto empresa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto_empresa
      @objeto = ContactoEmpresa.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/st_bandejas?m=ContactoEmpresa&e=ingreso" 
    end

    # Only allow a list of trusted parameters through.
    def contacto_empresa_params
      params.require(:contacto_empresa).permit(:razon_social, :rut, :direccion, :app_perfil_id, :estado)
    end
end

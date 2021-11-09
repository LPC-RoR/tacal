class ContactoPersonasController < ApplicationController
  before_action :set_contacto_persona, only: %i[ show edit update destroy cambio_estado]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /contacto_personas or /contacto_personas.json
  def index

    carga_sidebar_base(nombre_sidebar(controller_name), params[:id])

    if @elemento.despliegue == 'list'
      @coleccion = {}
      case @elemento.controlador
      when 'contacto_personas'
        case @elemento.elemento
        when 'Mis ingresos'
          @perfil = perfil_activo
          if @perfil.contacto_personas.all.count > 25
            @coleccion['contacto_personas'] = @perfil.contacto_personas.order(:createed_at).page(params[:page])
            @paginate = true
          else
            @coleccion['contacto_personas'] = @perfil.contacto_personas.order(:created_at)
            @paginate = false
          end
        end
      end
    end

  end

  # GET /contacto_personas/1 or /contacto_personas/1.json
  def show
  end

  # GET /contacto_personas/new
  def new
    activo = perfil_activo
    @objeto = activo.contacto_personas.new(app_perfil_id: params[:id], estado: 'ingreso')
  end

  # GET /contacto_personas/1/edit
  def edit
  end

  # POST /contacto_personas or /contacto_personas.json
  def create
    @objeto = ContactoPersona.new(contacto_persona_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Contacto persona was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacto_personas/1 or /contacto_personas/1.json
  def update
    respond_to do |format|
      if @objeto.update(contacto_persona_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Contacto persona was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  def cambio_estado
    @objeto.estado = params[:st]
    @objeto.save

    redirect_to "/st_bandejas?m=#{@objeto.class.name}&e=#{@objeto.estado}"
  end

  # DELETE /contacto_personas/1 or /contacto_personas/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Contacto persona was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto_persona
      @objeto = ContactoPersona.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/st_bandejas?m=ContactoPersona&e=ingreso" 
    end

    # Only allow a list of trusted parameters through.
    def contacto_persona_params
      params.require(:contacto_persona).permit(:nombres, :apellido_paterno, :apellido_materno, :rut, :telefono, :email, :app_perfil_id, :estado)
    end
end

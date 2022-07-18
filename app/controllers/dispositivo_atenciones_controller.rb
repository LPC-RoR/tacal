class DispositivoAtencionesController < ApplicationController
  before_action :set_dispositivo_atencion, only: %i[ show edit update destroy ]

  # GET /dispositivo_atenciones or /dispositivo_atenciones.json
  def index
    @dispositivo_atenciones = DispositivoAtencion.all
  end

  # GET /dispositivo_atenciones/1 or /dispositivo_atenciones/1.json
  def show
  end

  # GET /dispositivo_atenciones/new
  def new
    @dispositivo_atencion = DispositivoAtencion.new
  end

  # GET /dispositivo_atenciones/1/edit
  def edit
  end

  # POST /dispositivo_atenciones or /dispositivo_atenciones.json
  def create
    @dispositivo_atencion = DispositivoAtencion.new(dispositivo_atencion_params)

    respond_to do |format|
      if @dispositivo_atencion.save
        format.html { redirect_to @dispositivo_atencion, notice: "Dispositivo atencion was successfully created." }
        format.json { render :show, status: :created, location: @dispositivo_atencion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dispositivo_atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispositivo_atenciones/1 or /dispositivo_atenciones/1.json
  def update
    respond_to do |format|
      if @dispositivo_atencion.update(dispositivo_atencion_params)
        format.html { redirect_to @dispositivo_atencion, notice: "Dispositivo atencion was successfully updated." }
        format.json { render :show, status: :ok, location: @dispositivo_atencion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dispositivo_atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispositivo_atenciones/1 or /dispositivo_atenciones/1.json
  def destroy
    @dispositivo_atencion.destroy
    respond_to do |format|
      format.html { redirect_to dispositivo_atenciones_url, notice: "Dispositivo atencion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispositivo_atencion
      @dispositivo_atencion = DispositivoAtencion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dispositivo_atencion_params
      params.require(:dispositivo_atencion).permit(:dispositivo_atencion, :lugar_atencion, :profesional, :frecuencia_control, :tratamiento, :pcd_id)
    end
end

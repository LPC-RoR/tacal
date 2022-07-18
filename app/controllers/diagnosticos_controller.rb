class DiagnosticosController < ApplicationController
  before_action :set_diagnostico, only: %i[ show edit update destroy ]

  # GET /diagnosticos or /diagnosticos.json
  def index
    @coleccion = Diagnostico.all
  end

  # GET /diagnosticos/1 or /diagnosticos/1.json
  def show
  end

  # GET /diagnosticos/new
  def new
    @objeto = Diagnostico.new(pcd_id: params['objeto_id'])
  end

  # GET /diagnosticos/1/edit
  def edit
  end

  # POST /diagnosticos or /diagnosticos.json
  def create
    @objeto = Diagnostico.new(diagnostico_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Diagnostico was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnosticos/1 or /diagnosticos/1.json
  def update
    respond_to do |format|
      if @objeto.update(diagnostico_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Diagnostico was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosticos/1 or /diagnosticos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Diagnostico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnostico
      @objeto = Diagnostico.find(params[:id])
    end

    def set_redireccion
      @redireccion = @objeto.pcd
    end

    # Only allow a list of trusted parameters through.
    def diagnostico_params
      params.require(:diagnostico).permit(:diagnostico, :secuela, :hospitalizacion, :ultima_crisis, :pcd_id)
    end
end

class MedicamentosController < ApplicationController
  before_action :set_medicamento, only: %i[ show edit update destroy ]

  # GET /medicamentos or /medicamentos.json
  def index
    @coleccion = Medicamento.all
  end

  # GET /medicamentos/1 or /medicamentos/1.json
  def show
  end

  # GET /medicamentos/new
  def new
    @objeto = Medicamento.new(pcd_id: params['objeto_id'])
  end

  # GET /medicamentos/1/edit
  def edit
  end

  # POST /medicamentos or /medicamentos.json
  def create
    @objeto = Medicamento.new(medicamento_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Medicamento was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicamentos/1 or /medicamentos/1.json
  def update
    respond_to do |format|
      if @objeto.update(medicamento_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Medicamento was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicamentos/1 or /medicamentos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Medicamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicamento
      @objeto = Medicamento.find(params[:id])
    end

    def set_redireccion
      @redireccion = @objeto.pcd
    end

    # Only allow a list of trusted parameters through.
    def medicamento_params
      params.require(:medicamento).permit(:medicamento, :dosis, :autonomia_administracion, :adherencia_tratamiento, :pcd_id)
    end
end

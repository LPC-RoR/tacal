class BReglasController < ApplicationController
  before_action :set_b_regla, only: %i[ show edit update destroy ]

  # GET /b_reglas or /b_reglas.json
  def index
    @coleccion = BRegla.all
  end

  # GET /b_reglas/1 or /b_reglas/1.json
  def show
  end

  # GET /b_reglas/new
  def new
    @objeto = BRegla.new
  end

  # GET /b_reglas/1/edit
  def edit
  end

  # POST /b_reglas or /b_reglas.json
  def create
    @objeto = BRegla.new(b_regla_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "B regla was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_reglas/1 or /b_reglas/1.json
  def update
    respond_to do |format|
      if @objeto.update(b_regla_params)
        format.html { redirect_to @objeto, notice: "B regla was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_reglas/1 or /b_reglas/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to b_reglas_url, notice: "B regla was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_regla
      @objeto = BRegla.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def b_regla_params
      params.require(:b_regla).permit(:idioma, :tipo_palabra, :accion, :b_regla)
    end
end

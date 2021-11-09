class BIndicesController < ApplicationController
  before_action :set_b_indice, only: %i[ show edit update destroy ]

  # GET /b_indices or /b_indices.json
  def index
    @coleccion = BIndice.all
  end

  # GET /b_indices/1 or /b_indices/1.json
  def show
  end

  # GET /b_indices/new
  def new
    @objeto = BIndice.new
  end

  # GET /b_indices/1/edit
  def edit
  end

  # POST /b_indices or /b_indices.json
  def create
    @objeto = BIndice.new(b_indice_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "B indice was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_indices/1 or /b_indices/1.json
  def update
    respond_to do |format|
      if @objeto.update(b_indice_params)
        format.html { redirect_to @objeto, notice: "B indice was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_indices/1 or /b_indices/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to b_indices_url, notice: "B indice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_indice
      @objeto = BIndice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def b_indice_params
      params.require(:b_indice).permit(:b_clave_id, :ref_class, :ref_id)
    end
end

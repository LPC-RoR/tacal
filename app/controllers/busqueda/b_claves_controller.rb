class BClavesController < ApplicationController
  before_action :set_b_clave, only: %i[ show edit update destroy ]

  # GET /b_claves or /b_claves.json
  def index
    @coleccion = BClave.all
  end

  # GET /b_claves/1 or /b_claves/1.json
  def show
  end

  # GET /b_claves/new
  def new
    @objeto = BClave.new
  end

  # GET /b_claves/1/edit
  def edit
  end

  # POST /b_claves or /b_claves.json
  def create
    @objeto = BClave.new(b_clave_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "B clave was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_claves/1 or /b_claves/1.json
  def update
    respond_to do |format|
      if @objeto.update(b_clave_params)
        format.html { redirect_to @objeto, notice: "B clave was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_claves/1 or /b_claves/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to b_claves_url, notice: "B clave was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_clave
      @objeto = BClave.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def b_clave_params
      params.require(:b_clave).permit(:b_clave)
    end
end

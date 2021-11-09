class BPalabrasController < ApplicationController
  before_action :set_b_palabra, only: %i[ show edit update destroy ]

  # GET /b_palabras or /b_palabras.json
  def index
    @coleccion = BPalabra.all
  end

  # GET /b_palabras/1 or /b_palabras/1.json
  def show
  end

  # GET /b_palabras/new
  def new
    @objeto = BPalabra.new
  end

  # GET /b_palabras/1/edit
  def edit
  end

  # POST /b_palabras or /b_palabras.json
  def create
    @objeto = BPalabra.new(b_palabra_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "B palabra was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_palabras/1 or /b_palabras/1.json
  def update
    respond_to do |format|
      if @objeto.update(b_palabra_params)
        format.html { redirect_to @objeto, notice: "B palabra was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_palabras/1 or /b_palabras/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to b_palabras_url, notice: "B palabra was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_palabra
      @objeto = BPalabra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def b_palabra_params
      params.require(:b_palabra).permit(:b_palabra, :b_clave_id)
    end
end

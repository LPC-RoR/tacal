class DirDiresController < ApplicationController
  before_action :set_dir_dir, only: %i[ show edit update destroy ]

  # GET /dir_dires or /dir_dires.json
  def index
    @dir_dires = DirDir.all
  end

  # GET /dir_dires/1 or /dir_dires/1.json
  def show
  end

  # GET /dir_dires/new
  def new
    @dir_dir = DirDir.new
  end

  # GET /dir_dires/1/edit
  def edit
  end

  # POST /dir_dires or /dir_dires.json
  def create
    @dir_dir = DirDir.new(dir_dir_params)

    respond_to do |format|
      if @dir_dir.save
        format.html { redirect_to @dir_dir, notice: "Dir dir was successfully created." }
        format.json { render :show, status: :created, location: @dir_dir }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dir_dir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dir_dires/1 or /dir_dires/1.json
  def update
    respond_to do |format|
      if @dir_dir.update(dir_dir_params)
        format.html { redirect_to @dir_dir, notice: "Dir dir was successfully updated." }
        format.json { render :show, status: :ok, location: @dir_dir }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dir_dir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dir_dires/1 or /dir_dires/1.json
  def destroy
    @dir_dir.destroy
    respond_to do |format|
      format.html { redirect_to dir_dires_url, notice: "Dir dir was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dir_dir
      @dir_dir = DirDir.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dir_dir_params
      params.require(:dir_dir).permit(:parent_id, :child_id)
    end
end

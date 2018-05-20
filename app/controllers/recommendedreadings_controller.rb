class RecommendedreadingsController < ApplicationController
  before_action :set_recommendedreading, only: [:show, :edit, :update, :destroy]

  # GET /recommendedreadings
  # GET /recommendedreadings.json
  def index
    @recommendedreadings = Recommendedreading.all
  end

  # GET /recommendedreadings/1
  # GET /recommendedreadings/1.json
  def show
  end

  # GET /recommendedreadings/new
  def new
    @recommendedreading = Recommendedreading.new
  end

  # GET /recommendedreadings/1/edit
  def edit
  end

  # POST /recommendedreadings
  # POST /recommendedreadings.json
  def create
    @recommendedreading = Recommendedreading.new(recommendedreading_params)

    respond_to do |format|
      if @recommendedreading.save
        format.html { redirect_to @recommendedreading, notice: 'Recommendedreading was successfully created.' }
        format.json { render :show, status: :created, location: @recommendedreading }
      else
        format.html { render :new }
        format.json { render json: @recommendedreading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recommendedreadings/1
  # PATCH/PUT /recommendedreadings/1.json
  def update
    respond_to do |format|
      if @recommendedreading.update(recommendedreading_params)
        format.html { redirect_to @recommendedreading, notice: 'Recommendedreading was successfully updated.' }
        format.json { render :show, status: :ok, location: @recommendedreading }
      else
        format.html { render :edit }
        format.json { render json: @recommendedreading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recommendedreadings/1
  # DELETE /recommendedreadings/1.json
  def destroy
    @recommendedreading.destroy
    respond_to do |format|
      format.html { redirect_to recommendedreadings_url, notice: 'Recommendedreading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommendedreading
      @recommendedreading = Recommendedreading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recommendedreading_params
      params.require(:recommendedreading).permit(:fileattachment, :notes, :filename, :link)
    end
end

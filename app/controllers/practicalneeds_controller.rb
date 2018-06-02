class PracticalneedsController < ApplicationController
  before_action :set_practicalneed, only: [:show, :edit, :update, :destroy]

  # GET /practicalneeds
  # GET /practicalneeds.json
  def index
    @practicalneeds = Practicalneed.all
  end

  # GET /practicalneeds/1
  # GET /practicalneeds/1.json
  def show
  end

  # GET /practicalneeds/new
  def new
    @practicalneed = Practicalneed.new
  end

  # GET /practicalneeds/1/edit
  def edit
  end

  # POST /practicalneeds
  # POST /practicalneeds.json
  def create
    @practicalneed = Practicalneed.new(practicalneed_params)

    respond_to do |format|
      if @practicalneed.save
        format.html { redirect_to @practicalneed, notice: 'Practicalneed was successfully created.' }
        format.json { render :show, status: :created, location: @practicalneed }
      else
        format.html { render :new }
        format.json { render json: @practicalneed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practicalneeds/1
  # PATCH/PUT /practicalneeds/1.json
  def update
    respond_to do |format|
      if @practicalneed.update(practicalneed_params)
        format.html { redirect_to @practicalneed, notice: 'Practicalneed was successfully updated.' }
        format.json { render :show, status: :ok, location: @practicalneed }
      else
        format.html { render :edit }
        format.json { render json: @practicalneed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practicalneeds/1
  # DELETE /practicalneeds/1.json
  def destroy
    @practicalneed.destroy
    respond_to do |format|
      format.html { redirect_to practicalneeds_url, notice: 'Practicalneed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practicalneed
      @practicalneed = Practicalneed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practicalneed_params
      params.require(:practicalneed).permit(:title, :location, :description, :close, :approve, :user_id, :category_job_id, :category_jobtype_id)
    end
end

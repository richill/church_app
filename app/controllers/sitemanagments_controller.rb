class SitemanagmentsController < ApplicationController
  before_action :set_sitemanagment, only: [:show, :edit, :update, :destroy]

  # GET /sitemanagments
  # GET /sitemanagments.json
  def index
    @sitemanagments = Sitemanagment.all
  end

  # GET /sitemanagments/1
  # GET /sitemanagments/1.json
  def show
  end

  # GET /sitemanagments/new
  def new
    @sitemanagment = Sitemanagment.new
  end

  # GET /sitemanagments/1/edit
  def edit
  end

  # POST /sitemanagments
  # POST /sitemanagments.json
  def create
    @sitemanagment = Sitemanagment.new(sitemanagment_params)

    respond_to do |format|
      if @sitemanagment.save
        format.html { redirect_to @sitemanagment, notice: 'Sitemanagment was successfully created.' }
        format.json { render :show, status: :created, location: @sitemanagment }
      else
        format.html { render :new }
        format.json { render json: @sitemanagment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitemanagments/1
  # PATCH/PUT /sitemanagments/1.json
  def update
    respond_to do |format|
      if @sitemanagment.update(sitemanagment_params)
        format.html { redirect_to @sitemanagment, notice: 'Sitemanagment was successfully updated.' }
        format.json { render :show, status: :ok, location: @sitemanagment }
      else
        format.html { render :edit }
        format.json { render json: @sitemanagment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitemanagments/1
  # DELETE /sitemanagments/1.json
  def destroy
    @sitemanagment.destroy
    respond_to do |format|
      format.html { redirect_to sitemanagments_url, notice: 'Sitemanagment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitemanagment
      @sitemanagment = Sitemanagment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sitemanagment_params
      params.require(:sitemanagment).permit(:homepg_img01, :homepg_img02, :homepg_img03, :homepg_video)
    end
end

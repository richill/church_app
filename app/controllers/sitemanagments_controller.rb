class SitemanagmentsController < ApplicationController
  before_action :set_sitemanagment, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @sitemanagments = Sitemanagment.all
    else
      redirect_to error_path
    end
  end

  def show
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def new
    if user_signed_in? && current_user.admin
      @sitemanagment = Sitemanagment.new
    else
      redirect_to error_path
    end
  end

  def edit
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def create
    if user_signed_in? && current_user.admin
      @sitemanagment = Sitemanagment.new(sitemanagment_params)
      respond_to do |format|
        if @sitemanagment.save
          format.html { redirect_to content_management_user_path(current_user), notice: 'Sitemanagment was successfully created.' }
          format.json { render :show, status: :created, location: @sitemanagment }
        else
          format.html { render :new }
          format.json { render json: @sitemanagment.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @sitemanagment.update(sitemanagment_params)
          format.html { redirect_to content_management_user_path(current_user), notice: 'Sitemanagment was successfully updated.' }
          format.json { render :show, status: :ok, location: @sitemanagment }
        else
          format.html { render :edit }
          format.json { render json: @sitemanagment.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @sitemanagment.destroy
      respond_to do |format|
        format.html { redirect_to sitemanagments_url, notice: 'Sitemanagment was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to error_path
    end
  end

  private
    def set_sitemanagment
      @sitemanagment = Sitemanagment.first
      # @sitemanagment = Sitemanagment.find(params[:id])
    end

    def sitemanagment_params
      params.require(:sitemanagment).permit(:homepg_img01, :homepg_img02, :homepg_img03, :homepg_video, :eventlink_img01, :eventlink_img02, :eventlink_img03, :videotitle)
    end
end

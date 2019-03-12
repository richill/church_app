class RecommendedreadingsController < ApplicationController
  before_action :set_recommendedreading, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @recommendedreadings = Recommendedreading.all
    else
      redirect_to error_path
    end
  end

  def show
  end

  def new
    if user_signed_in? && current_user.admin
      @recommendedreading = Recommendedreading.new
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
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @recommendedreading.update(recommendedreading_params)
          format.html { redirect_to @recommendedreading, notice: 'Recommendedreading was successfully updated.' }
          format.json { render :show, status: :ok, location: @recommendedreading }
        else
          format.html { render :edit }
          format.json { render json: @recommendedreading.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @recommendedreading.destroy
      respond_to do |format|
        format.html { redirect_to recommendedreadings_url, notice: 'Recommendedreading was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to error_path
    end
  end

  private
    def set_recommendedreading
      @recommendedreading = Recommendedreading.find(params[:id])
    end

    def recommendedreading_params
      params.require(:recommendedreading).permit(:fileattachment, :notes, :filename, :link)
    end
end

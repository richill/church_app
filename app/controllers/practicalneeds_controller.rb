class PracticalneedsController < ApplicationController
  before_action :set_practicalneed, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @practicalneeds = Practicalneed.all
    else
      redirect_to error_path
    end
  end

  def show
    if user_signed_in?
      @commentable = @practicalneed
      @comment = Comment.new
      @comments = @commentable.comments
    else
      redirect_to error_path
    end
  end

  def new
    # if user_signed_in?
    if user_signed_in? && current_user.admin
      @user = User.friendly.find(params[:user_id])
      @practicalneed = @user.practicalneeds.build
    else
      redirect_to error_path
    end
  end

  def edit
    if user_signed_in? && current_user.admin
      @user = current_user
    else
      redirect_to error_path
    end
  end

  def create
    # if user_signed_in?
    if user_signed_in? && current_user.admin
      #@practicalneed = Practicalneeds.new(practicalneed_params)
      @user = User.friendly.find(params[:user_id])
      @practicalneed = @user.practicalneeds.create(practicalneed_params)
      respond_to do |format|
        if @practicalneed.save
          format.html { redirect_to @practicalneed, notice: 'Practical need was successfully created.' }
          format.json { render :show, status: :created, location: @practicalneed }
        else
          format.html { render :new }
          format.json { render json: @practicalneed.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @practicalneed.update_attributes(practicalneed_params)
          format.html { redirect_to @practicalneed, notice: 'Practical need was successfully updated.' }
          format.json { render :show, status: :ok, location: @practicalneed }
        else
          format.html { render :edit }
          format.json { render json: @practicalneed.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @user = current_user
      @practicalneed = @user.practicalneeds.friendly.find(params[:id])
      @practicalneed.destroy
      redirect_to user_path(@user)
    else
      redirect_to error_path
    end
  end

  private
    def set_practicalneed
      @practicalneed = Practicalneed.friendly.find(params[:id])
    end

    def practicalneed_params
      params.require(:practicalneed).permit(:title, :location, :description, :close, :approve, :user_id, :category_job_id, :category_jobtype_id)
    end
end

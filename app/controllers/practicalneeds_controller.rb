class PracticalneedsController < ApplicationController
  before_action :set_practicalneed, only: [:show, :edit, :update, :destroy]

  def index
    @practicalneeds = Practicalneed.all
  end

  def show
    # @commentable = @practicalneeds
    # @comment = Comment.new
    # @comments = @commentable.comments
  end

  def new
    @user = User.friendly.find(params[:user_id])
    @practicalneed = @user.practicalneeds.build
  end

  def edit
    @user = current_user
  end

  def create
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
  end

  def update
    # respond_to do |format|
    #   if @practicalneed.update(practicalneed_params)
    #     format.html { redirect_to @practicalneed, notice: 'Practicalneed was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @practicalneed }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @practicalneed.errors, status: :unprocessable_entity }
    #   end
    # end

    respond_to do |format|
      if @practicalneed.update_attributes(practicalneed_params)
        format.html { redirect_to @practicalneed, notice: 'Practical need was successfully updated.' }
        format.json { render :show, status: :ok, location: @practicalneed }
      else
        format.html { render :edit }
        format.json { render json: @practicalneed.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = current_user
    @practicalneed = @user.practicalneeds.friendly.find(params[:id])
    @practicalneed.destroy
    redirect_to user_path(@user)
  end

  private
    def set_practicalneed
      @practicalneed = Practicalneed.friendly.find(params[:id])
    end

    def practicalneed_params
      params.require(:practicalneed).permit(:title, :location, :description, :close, :approve, :user_id, :category_job_id, :category_jobtype_id)
    end
end

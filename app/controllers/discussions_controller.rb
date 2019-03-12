class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @discussions = Discussion.all
    else
      redirect_to error_path
    end
  end

  def show
    @commentable = @discussion
    @comment = Comment.new
    @comments = @commentable.comments
  end

  def new
    if user_signed_in? && current_user.admin
      @discussion = Discussion.new
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
      @discussion = Discussion.new(discussion_params)

      respond_to do |format|
        if @discussion.save
          format.html { redirect_to @discussion, notice: 'Discussion was successfully created.' }
          format.json { render :show, status: :created, location: @discussion }
        else
          format.html { render :new }
          format.json { render json: @discussion.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @discussion.update(discussion_params)
          format.html { redirect_to @discussion, notice: 'Discussion was successfully updated.' }
          format.json { render :show, status: :ok, location: @discussion }
        else
          format.html { render :edit }
          format.json { render json: @discussion.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @discussion.destroy
      respond_to do |format|
        format.html { redirect_to discussions_url, notice: 'Discussion was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to error_path
    end
  end

  private
    def set_discussion
      @discussion = Discussion.friendly.find(params[:id])
    end

    def discussion_params
      params.require(:discussion).permit(:topic, :image, :description)
    end
end

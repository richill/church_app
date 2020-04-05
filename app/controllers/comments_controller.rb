class CommentsController < ApplicationController
  before_action :load_commentable

  def index
    @comments = @commentable.comments
  end

  def show
  end

  def new
    @comment = @commentable.comments.new
  end

  def edit  
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user

    # if controller_name == 'discussion'
    if @discussion
      @discussion = Discussion.friendly.find(params[:discussion_id])
    elsif @practicalneed
    # elif controller_name == 'practicalneed'
      @practicalneed = Practicalneed.friendly.find(params[:practicalneed_id])
    end

    respond_to do |format|
      if @comment.save
        format.html { redirect_to [@commentable], notice: 'Comment was successfully posted.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { redirect_to :back, alert: 'Comment was not posted.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if @discussion
      @discussion = Discussion.friendly.find(params[:discussion_id])
    elsif @practicalneed
      @practicalneed = Practicalneed.friendly.find(params[:practicalneed_id])
    end
  
    @comment = @discussion.comment.find(params[:id])

    @comment.destroy
    respond_to do |format|
      format.html { redirect_to [@commentable], notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end

  def load_commentable
    resource, id = request.path.split('/')[1, 2]
    @commentable = resource.singularize.classify.constantize.friendly.find(id)
  end
end






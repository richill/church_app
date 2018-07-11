class UsersController < ApplicationController
  before_action :authenticate_user!, :set_user, only: [:show, :edit, :update, :destroy, :stats_users]
  before_filter :setup_generic

  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user_discussion_comments = Comment.order("created_at desc").where(user_id: current_user).where("commentable_type IN (?)", ["Discussion"]) 
    @user_practicalneed_comments = Comment.order("created_at desc").where(user_id: current_user).where("commentable_type IN (?)", ["Practicalneed"]) 
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def dashboard  
  end

  def stats_users
  end

  def stats_ministries
    # @launchministry = Launchministry.friendly.find(params[:id])
    @launchministry = Launchministry.first
  end

  def sitelinks  
  end

  private
    def setup_generic
      @users = User.all
      @launchministries = Launchministry.all
    end

    def set_user
      @user = User.friendly.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:firstname, :lastname, :admin, :approve, :job, :category_gender_id)
    end
end

class UsersController < ApplicationController
  before_action :authenticate_user!, :set_user, only: [:show, :edit, :update, :destroy, :stats_users]
  before_action :setup_generic

  def index
    if user_signed_in? && current_user.admin
      @users = User.all
      @user = current_user
    else
      redirect_to error_path
    end
  end

  def show
    if user_signed_in?
      @user_discussion_comments = Comment.order("created_at desc").where(user_id: current_user).where("commentable_type IN (?)", ["Discussion"]) 
      @user_practicalneed_comments = Comment.order("created_at desc").where(user_id: current_user).where("commentable_type IN (?)", ["Practicalneed"]) 
    else
      redirect_to error_path
    end
  end

  def new
    @user = User.new
  end

  def edit
    if user_signed_in? && current_user.admin || user_signed_in? && @user == current_user
      @user = User.friendly.find(params[:id])
    else
      redirect_to error_path
    end
  end

  def create
    if user_signed_in? && current_user.admin
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
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin || user_signed_in? && @user == current_user
      if current_user.admin
        respond_to do |format|
          if @user.update(user_params)
            format.html { redirect_to stats_users_user_path(current_user), notice: 'User was successfully updated.' }
            format.json { render :show, status: :ok, location: @user }
          else
            format.html { render :edit }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      else
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
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to error_path
    end
  end

  def dashboard  
    if user_signed_in? && current_user.admin
      @documents = Documentation.order("updated_at desc")
    else
      redirect_to error_path
    end
  end

  def stats_users
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def stats_ministries
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def sitelinks  
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def stats_galleries
    if user_signed_in? && current_user.admin
      @galleries = Gallery.order("created_at desc")
      @user = current_user
    else
      redirect_to error_path
    end
  end

  def stats_forum
    if user_signed_in? && current_user.admin
      @user = current_user
    else
      redirect_to error_path
    end
  end

  def stats_careers
    if user_signed_in? && current_user.admin
      @user = current_user
    else
      redirect_to error_path
    end
  end

  def stats_forms
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def content_management
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def stats_smallgroups
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def stats_practicalneeds
    if user_signed_in? && current_user.admin
      @practicalneeds = Practicalneed.desc_order
    else
      redirect_to error_path
    end
  end

  def stats_businesses
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  private
    def setup_generic
      @users = User.all
      @launchministries = Launchministry.order("created_at desc")
      @events = Event.all.order("start_time asc")
      @gallries = Gallery.all
      @discussions = Discussion.all
      @jobs = Job.all
      @forms = Form.all
      @photos = Photo.all
      @sitemanagment = Sitemanagment.first
      @user = current_user
      @smallgroups = Smallgroup.all
    end

    def set_user
      @user = User.friendly.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:firstname, :lastname, :admin, :approve, :job, :category_gender_id, :image)
    end
end

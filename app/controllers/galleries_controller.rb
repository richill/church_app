class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy, :gallery_photos]

  def index
    @galleries = Gallery.desc_order
  end

  def show
    @gallery_photos = @gallery.photos
    @user = current_user
  end

  def new
    if user_signed_in? && current_user.admin
      @user = current_user
      @gallery = @user.galleries.build
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
    if user_signed_in? && current_user.admin
      @user = User.friendly.find(params[:user_id])
      @gallery = @user.galleries.create(gallery_params)
      respond_to do |format|
        if @gallery.save
          format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
          format.json { render :show, status: :created, location: @gallery }
        else
          format.html { render :new }
          format.json { render json: @gallery.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @gallery.update_attributes(gallery_params)
          format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
          format.json { render :show, status: :ok, location: @gallery }
        else
          format.html { render :edit }
          format.json { render json: @gallery.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @user = current_user
      @gallery = @user.galleries.friendly.find(params[:id])
      @gallery.destroy
      redirect_to user_path(@user)
    else
      redirect_to error_path
    end
  end

  def gallery_photos
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  private
    def set_gallery
      @gallery = Gallery.friendly.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:name, :date, :description, :image, :user_id)
    end
end

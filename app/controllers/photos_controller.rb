class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @photos = Photo.all
    else
      redirect_to error_path
    end
  end

  def show
    @gallery = @photo.gallery
  end

  def new
    if user_signed_in? && current_user.admin
      @gallery = Gallery.friendly.find(params[:gallery_id])
      @photo = @gallery.photos.build
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
      @gallery = Gallery.friendly.find(params[:gallery_id])
      @photo = @gallery.photos.create(photo_params)
      
      respond_to do |format|
        if @photo.save
          format.html { redirect_to gallery_photos_gallery_path(@photo.gallery), notice: 'photo was successfully created.' }
          format.json  { render json: @photo, status: :created, location: @photo }
        else
          format.html { render action: "new" }
          format.json  { render json: @photo.errors, status: :unprocessable_entity }
        end
      end

    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @photo.update_attributes(photo_params)
          format.html { redirect_to gallery_photos_gallery_path(@photo.gallery), notice: 'photo was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @photo.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @gallery = Gallery.friendly.find(params[:gallery_id])
      @photo = @gallery.photos.find(params[:id])
      @photo.destroy
      redirect_to photos_path
    else
      redirect_to error_path
    end
  end


  private
  def set_photo
    @photo = Photo.friendly.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:description, :image, :gallery_id)
  end
end
































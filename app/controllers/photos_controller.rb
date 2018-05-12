class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def show
  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @photo = @gallery.photos.build
  end

  def edit
    @gallery = gallery.find(params[:gallery_id])
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @photo = @gallery.photos.create(photo_params)
    respond_to do |format|
      if @photo.save
        format.html { redirect_to([@photo.gallery, @photo], notice: 'photo was successfully created.') }
        format.json  { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json  { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @photo.update_attributes(photo_params)
        format.html { redirect_to([@photo.gallery, @photo], notice: 'photo was successfully updated.') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @photo = @gallery.photos.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end


  private
  def set_photo
    @photo = Photo.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def photo_params
    params.require(:photo).permit(:description, :image, :gallery_id)
  end
end
































class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]

  def index
    @galleries = Gallery.desc_order
  end

  # def show
  #   @gallery_photos = @gallery.photos
  # end
  def show
    @user = current_user
  end

  # def new
  #   @gallery = Gallery.new
  # end
  def new
    @user = User.friendly.find(params[:user_id])
    @gallery = @user.galleries.build
  end

  # def edit
  # end
  def edit
    @user = current_user
  end

  # def create
  #   @gallery = Gallery.new(gallery_params)

  #   respond_to do |format|
  #     if @gallery.save
  #       format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
  #       format.json { render :show, status: :created, location: @gallery }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @gallery.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  def create
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
  end

  # def update
  #   respond_to do |format|
  #     if @gallery.update(gallery_params)
  #       format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @gallery }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @gallery.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  def update
    respond_to do |format|
      if @gallery.update_attributes(gallery_params)
        format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @gallery }
      else
        format.html { render :edit }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # def destroy
  #   @gallery.destroy
  #   respond_to do |format|
  #     format.html { redirect_to galleries_url, notice: 'Gallery was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  def destroy
    @user = current_user
    @gallery = @user.galleries.friendly.find(params[:id])
    @gallery.destroy
    redirect_to user_path(@user)
  end

  private
    def set_gallery
      @gallery = Gallery.friendly.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:name, :date, :description, :image, :user_id)
    end
end

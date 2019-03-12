class LaunchministriesController < ApplicationController
  before_action :set_launchministry, only: [:show, :edit, :update, :destroy]
  before_filter :setup_generic

  def index
    if user_signed_in? && current_user.admin
      @launchministries = Launchministry.all
    else
      redirect_to error_path
    end
  end

  def show
  end

  def new
    if user_signed_in?
      @user = current_user
      @launchministry = @user.launchministries.build
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
    if user_signed_in?
      @user = current_user
      @launchministry = @user.launchministries.create(launchministry_params)
      if @user.admin?
        respond_to do |format|
          if @launchministry.save
            format.html { redirect_to stats_ministries_user_path(@user), notice: 'Ministry was successfully created.' }
            format.json { render :show, status: :created, location: @launchministry }
          else
            format.html { render :new }
            format.json { render json: @launchministry.errors, status: :unprocessable_entity }
          end
        end
      else
        respond_to do |format|
          if @launchministry.save
            format.html { redirect_to thank_you_path, notice: 'Ministry was successfully created.' }
            format.json { render :show, status: :created, location: @launchministry }
          else
            format.html { render :new }
            format.json { render json: @launchministry.errors, status: :unprocessable_entity }
          end
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      @user = current_user
      if @user.admin?
        respond_to do |format|
          if @launchministry.update_attributes(launchministry_params)
            format.html { redirect_to stats_ministries_user_path(@user), notice: 'Launchministry was successfully updated.' }
            format.json { render :show, status: :ok, location: @launchministry }
          else
            format.html { render :edit }
            format.json { render json: @launchministry.errors, status: :unprocessable_entity }
          end
        end
      else
        respond_to do |format|
          if @launchministry.update_attributes(launchministry_params)
            format.html { redirect_to @launchministry, notice: 'Launchministry was successfully updated.' }
            format.json { render :show, status: :ok, location: @launchministry }
          else
            format.html { render :edit }
            format.json { render json: @launchministry.errors, status: :unprocessable_entity }
          end
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @user = current_user
      @launchministry = @user.launchministries.friendly.find(params[:id])
      @launchministry.destroy
      redirect_to stats_ministries_user_path(@user)
    else
      redirect_to error_path
    end
  end

  def ministriespg
    @launchministries = Launchministry.all
  end

  private
    def setup_generic
      @users = User.all
      @launchministries = Launchministry.all
    end

    def set_launchministry
      @launchministry = Launchministry.friendly.find(params[:id])
    end

    def launchministry_params
      params.require(:launchministry).permit(:firstname, :lastname, :email, :mobile, :homenumber, :worknumber, :address, :city, :postcode, :mininstryidea, :mininstrydescription, :ministryneed, :ministrymission, :approve, :user_id)
    end
end

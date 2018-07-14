class LaunchministriesController < ApplicationController
  before_action :set_launchministry, only: [:show, :edit, :update, :destroy]
  before_filter :setup_generic

  def index
    @launchministries = Launchministry.all
  end

  def show
  end

  def new
    @user = current_user
    @launchministry = @user.launchministries.build
  end

  def edit
  end

  def create
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
  end

  def update
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
  end

  # def destroy
  #   @launchministry.destroy
  #   respond_to do |format|
  #     format.html { redirect_to launchministries_url, notice: 'Launchministry was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  def destroy
    @user = current_user
    @launchministry = @user.launchministries.friendly.find(params[:id])
    @launchministry.destroy
    redirect_to user_path(@user)
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

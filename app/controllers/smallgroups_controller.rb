class SmallgroupsController < ApplicationController
  before_action :set_smallgroup, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @smallgroups = Smallgroup.all
    else
      redirect_to error_path
    end
  end

  def show
  end

  def new
    if user_signed_in? && current_user.admin
      @smallgroup = Smallgroup.new
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
      @smallgroup = Smallgroup.new(smallgroup_params)
      respond_to do |format|
        if @smallgroup.save
          format.html { redirect_to @smallgroup, notice: 'Smallgroup was successfully created.' }
          format.json { render :show, status: :created, location: @smallgroup }
        else
          format.html { render :new }
          format.json { render json: @smallgroup.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @smallgroup.update(smallgroup_params)
          format.html { redirect_to @smallgroup, notice: 'Smallgroup was successfully updated.' }
          format.json { render :show, status: :ok, location: @smallgroup }
        else
          format.html { render :edit }
          format.json { render json: @smallgroup.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @smallgroup.destroy
      respond_to do |format|
        format.html { redirect_to smallgroups_url, notice: 'Smallgroup was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to error_path
    end
  end

  private
    def set_smallgroup
      @smallgroup = Smallgroup.friendly.find(params[:id])
    end

    def smallgroup_params
      params.require(:smallgroup).permit(:name, :descriptin, :image, :address, :postcode)
    end
end

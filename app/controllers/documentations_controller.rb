class DocumentationsController < ApplicationController
  before_action :set_documentation, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @documentations = Documentation.all
    else
      redirect_to error_path
    end
  end

  def show
    if user_signed_in? && current_user.admin
      @user = current_user
    else
      redirect_to error_path
    end
  end

  def new
    if user_signed_in? && current_user.admin
      @user = current_user
      @documentation = @user.documentations.build
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
      @documentation = @user.documentations.create(documentation_params)

      respond_to do |format|
        if @documentation.save
          format.html { redirect_to dashboard_user_path(current_user), notice: 'Document was successfully created.' }
          format.json { render :show, status: :created, location: @documentation }
        else
          format.html { render :new }
          format.json { render json: @documentation.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @documentation.update(documentation_params)
          format.html { redirect_to @documentation, notice: 'Document was successfully updated.' }
          format.json { render :show, status: :ok, location: @documentation }
        else
          format.html { render :edit }
          format.json { render json: @documentation.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @user = current_user
      @documentation = @user.documentations.friendly.find(params[:id])
      @documentation.destroy
      dashboard_user_path(current_user)
    else
      redirect_to error_path
    end
  end

  private
    def set_documentation
      @documentation = Documentation.friendly.find(params[:id])
    end

    def documentation_params
      params.require(:documentation).permit(:title, :content, :user_id)
    end
end

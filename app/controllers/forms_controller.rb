class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]

  def index
    @forms = Form.all
  end

  def show
  end

  def new
    if user_signed_in? && current_user.admin
      @form = Form.new
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
      @form = Form.new(form_params)
      respond_to do |format|
        if @form.save
          format.html { redirect_to stats_forms_user_path(current_user), notice: 'Form was successfully created.' }
          format.json { render :show, status: :created, location: @form }
        else
          format.html { render :new }
          format.json { render json: @form.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @form.update(form_params)
          format.html { redirect_to stats_forms_user_path(current_user), notice: 'Form was successfully updated.' }
          format.json { render :show, status: :ok, location: @form }
        else
          format.html { render :edit }
          format.json { render json: @form.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @form.destroy
      respond_to do |format|
        format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to error_path
    end
  end

  private
    def set_form
      @form = Form.find(params[:id])
    end

    def form_params
      params.require(:form).permit(:title, :fileattachment, :user_id)
    end
end

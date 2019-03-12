class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @jobs = Job.all
    else
      redirect_to error_path
    end
  end

  def show
    @user = current_user
  end

  def new
    if user_signed_in?
      @user = User.friendly.find(params[:user_id])
      @job = @user.jobs.build
    else
      redirect_to error_path
    end
  end

  def edit
    if user_signed_in?
      @user = current_user
    else
      redirect_to error_path
    end
  end

  def create
    if user_signed_in?
      @user = User.friendly.find(params[:user_id])
      @job = @user.jobs.create(job_params)
      respond_to do |format|
        if @job.save
          format.html { redirect_to @job, notice: 'Job was successfully created.' }
          format.json { render :show, status: :created, location: @job }
        else
          format.html { render :new }
          format.json { render json: @job.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in?
      respond_to do |format|
        if @job.update_attributes(job_params)
          format.html { redirect_to @job, notice: 'Job was successfully updated.' }
          format.json { render :show, status: :ok, location: @job }
        else
          format.html { render :edit }
          format.json { render json: @job.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in?
      @user = current_user
      @job = @user.jobs.friendly.find(params[:id])
      @job.destroy
      redirect_to user_path(@user)
    else
      redirect_to error_path
    end
  end

  private
    def set_job
      @job = Job.friendly.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:title, :location, :description, :close, :approve, :user_id, :category_job_id, :category_joblevel_id, :category_jobtype_id, :address, :churchjob)
    end
end

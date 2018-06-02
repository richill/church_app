class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]


  def index
    @jobs = Job.all
  end

  def show
    @user = current_user
  end

  def new
    @user = User.friendly.find(params[:user_id])
    @job = @user.jobs.build
  end

  def edit
    @user = current_user
  end

  def create
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
  end

  def update
    respond_to do |format|
      if @job.update_attributes(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = current_user
    @job = @user.jobs.friendly.find(params[:id])
    @job.destroy
    redirect_to user_path(@user)
  end

  private
    def set_job
      @job = Job.friendly.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:title, :location, :description, :close, :approve, :user_id, :category_job_id, :category_joblevel_id, :category_jobtype_id, :address, :churchjob)
    end
end

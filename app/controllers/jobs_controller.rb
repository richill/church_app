class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]


  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    # @job = Job.new
    @user = User.friendly.find(params[:user_id])
    @job = @user.jobs.build
  end

  def edit
    @user = User.friendly.find(params[:user_id])
  end

  def create
    # @job = Job.new(job_params)
    # respond_to do |format|
    #   if @job.save
    #     format.html { redirect_to @job, notice: 'Job was successfully created.' }
    #     format.json { render :show, status: :created, location: @job }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @job.errors, status: :unprocessable_entity }
    #   end
    # end
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
    # respond_to do |format|
    #   if @job.update(job_params)
    #     format.html { redirect_to @job, notice: 'Job was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @job }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @job.errors, status: :unprocessable_entity }
    #   end
    # end
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
    # @job.destroy
    # respond_to do |format|
    #   format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    @user = User.friendly.find(params[:user_id])
    @job = @user.jobs.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :location, :description, :close, :approve, :user_id, :category_job_id, :category_joblevel_id, :category_jobtype_id, :address, :churchjob)
    end
end

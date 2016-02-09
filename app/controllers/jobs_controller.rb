class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update, :destroy]

  def index
    #list all jobs
  end

  def show
    #show jobs
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to @job
    else
      render "New"
    end
  end

  def edit
    #edit job
  end

  def update
    #update job
  end

  def destroy
    #delete job
  end

  private

  def jobs_params
    params.require(:job).permit(:title, :description, :company, :url)
  end

  def find_job
    @job = Job.find(params[:id])
  end
end

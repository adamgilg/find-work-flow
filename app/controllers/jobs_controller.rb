class JobsController < ApplicationController
  def new
    @job = Job.new(params[:job])
  end

  def create
    @job = Job.new(params[:job])
    if @job.save
      flash[:notice] = "Job added"
      redirect_to root_url
    else
      flash[:alert] = "Problem saving job"
      redirect_to :back
    end
  end

  def show
    @job = Job.find(params[:id])
    if request.xhr?
      render 'jobs/_job_info', layout: false
    else
      # do something else?
    end
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(params[:job])
      flash[:notice] = "Note saved"
      render 'jobs/_job_info', layout: false
    else
      flash[:alert] = "Issue saving note"
      render nothing: true
    end
  end
end
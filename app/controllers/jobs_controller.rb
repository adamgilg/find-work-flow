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
end
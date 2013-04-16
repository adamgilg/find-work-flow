class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
      flash[:notice] = "Company added"
      redirect_to root_url
    else
      flash[:alert] = "Problem saving company"
      redirect_to :back
    end
  end
end
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @user.companies.includes(jobs)
  end

  def index
    @users = User.all
  end
end
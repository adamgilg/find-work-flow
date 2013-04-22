class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    # @user.companies.includes(jobs)
  end

  def index
    @users = User.all
  end
end
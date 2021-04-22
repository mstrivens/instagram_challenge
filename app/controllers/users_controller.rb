class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end

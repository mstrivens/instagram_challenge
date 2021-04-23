class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    redirect_to root_url, notice: "Logged in!"
  end
end

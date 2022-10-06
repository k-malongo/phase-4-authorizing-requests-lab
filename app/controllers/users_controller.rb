class UsersController < ApplicationController

  def show
    user = User.find(session[:user_id])
    render json: user
  end
  def index 
    user = User.all
    render json: user 
  end

end

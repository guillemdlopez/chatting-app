class UsersController < ApplicationController
  before_action :logged_in_redirect, only: [:new]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to Message Me, #{@user.username}. Start chatting with people all over the globe!"

      redirect_to root_path
    end
  end

  private
  def logged_in_redirect
    if logged_in?
      flash[:alert] = 'You are already logged in'

      redirect_to request.referrer
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :avatar)
  end
end

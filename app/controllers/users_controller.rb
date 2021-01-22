class UsersController < ApplicationController
  before_action :logged_in_redirect, only: [:new]
  before_action :find_user, only: [:online, :offline, :absent, :idle]
  
  def new
    @user = User.new
  end

  def show
    @user = User.find_by(username: params[:username])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to Message Me, #{@user.username}. Start chatting with people all over the globe!"

      redirect_to root_path
    end
  end

  def online
    @user.status = 'online'
    @user.save
    
    redirect_to root_path
  end

    def offline
      @user.status = 'offline'

      @user.save
      redirect_to root_path
    end

    def absent
      @user.status = 'absent'

      @user.save
      redirect_to root_path
    end

    def idle
      @user.status = 'idle'

      @user.save
      redirect_to root_path
    end

  private

  

  def find_user
    @user = User.find(params[:user_id])
  end

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

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
      flash[:success] = "Welcome to Message Me, #{@user.username}. Start chatting with people all over the globe!"

      redirect_to root_path
    else
      flash.now[:alert] = 'Something went wrong, please try it again💔'

      render :new
    end
  end

  def online
    @user.status = 'online'
    
    if @user.save
      flash[:notice] = "You are back online"
      redirect_back(fallback_location: root_path)
    end
  end

    def offline
      @user.status = 'offline'

      if @user.save
        flash[:notice] = 'You are offline. Nobody can see you are still on the app. You are a hacker😎'
        redirect_back(fallback_location: root_path)
      end
    end

    def absent
      @user.status = 'absent'

      if @user.save
        flash[:notice] = 'It seems like you fell asleep on your computer or that you are temporary inactive'
        redirect_back(fallback_location: root_path)
      end
    end

    def idle
      @user.status = 'idle'

      if @user.save
        flash[:notice] = "Honestly, if you chose this state is because you don't know how to feel right know. Go get some rest"
        redirect_back(fallback_location: root_path)
      end
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

class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]
  after_action :online_status, only: [:create]
  before_action :offline_status, only: [:destroy]
    
    def new; end
  
    def create
      user = User.find_by(username: params[:session][:username])
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        # user.status = 'online'
        flash[:notice] = "You have successfully logged in"
        redirect_to root_path
      else
        flash.now[:alert] = "There was something wrong with your login credentials"
        render 'new'
      end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = 'You have succesfully logged out'

        redirect_to login_path
    end

    private

    def online_status
      current_user.status = 'online'

      current_user.save
    end

    def offline_status
      current_user.status = 'offline'

      current_user.save
    end

    def logged_in_redirect
      if logged_in?
        flash[:alert] = 'You are already logged in'
        redirect_to root_path
      end
    end
end

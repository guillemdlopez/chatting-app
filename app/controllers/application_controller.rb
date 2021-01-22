class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :is_online?, :new_user_online

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:alert] = 'You must be logged in to perform that action'
            redirect_to login_path
        end
    end

    def is_online?(user)
        user.status == 'online'
    end

    def new_user_online
        user = User.find_by(username: params[:session][:username])
        user != current_user && user.is_online?
    end
end

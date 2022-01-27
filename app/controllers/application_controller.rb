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
        users = User.all
        @new_user = nil
        users.each do |user|
            @new_user ||= user if user != current_user && is_online?(user)
        end
        @new_user
    end
end

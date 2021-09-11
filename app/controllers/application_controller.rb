class ApplicationController < ActionController::Base
    def logged_in?
        !!session[:user_id]
    end
    def current_user
        User.find(session[:user_id])
    end
    def get_time
        new Date().get_time
    end
end

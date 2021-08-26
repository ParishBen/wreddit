class ApplicationController < ActionController::Base
    def logged_in?
        !!session[:user_id]
    end
    current_user
        User.find_by(id: session[:user_id])
    end
end

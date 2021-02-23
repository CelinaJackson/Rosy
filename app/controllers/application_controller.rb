class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :login_required 

    def login_required
        if !logged_in? 
            redirect_to new_session_path, :notice => "Log in to edit or delete your ratings"
        end 
    end 

    def logged_in?
        !current_user.nil?
    end 

    helper_method :logged_in?

    def current_user
        User.find_by(id: session[:user_id]) 
    end 

    helper_method :current_user

end

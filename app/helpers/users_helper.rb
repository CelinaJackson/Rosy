module UsersHelper

    def redirect_if_not_logged_in 
        if !current_user 
            flash[:alert] = "You have to be logged in to do that!"
        end 
    end 

    def logged_in? 
        !!session[:user_id]
    end 

    def current_user 
        @user = User.find(session[:user_id]) if session[:user_id]
    end
    
end 
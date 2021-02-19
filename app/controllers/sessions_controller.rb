class SessionsController < ApplicationController 

    # def index 
    # end 

    def show 
        @user = User.find_by(params[:id])
    end 

    def new 
    end 

    def create 
        @user = User.find_by(:email => params[:email])
        if @user && @user.authenticate(params[:email][:password])
           session[:user_id] = @user.id
           redirect_to user_path(@user)
        else 
           redirect_to new_session_path, alert: "Your Email or Password was invalid"
        end
    end 

    # def destroy 
    #     reset_session 
    #     redirect_to new_sessions_path 
    # end 
end 
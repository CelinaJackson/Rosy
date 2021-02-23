class SessionsController < ApplicationController 
    skip_before_action :login_required, :only => [:new, :create]

    def index
         render 'welcome'
    end 

    def show 
        @user = User.find_by(params[:id])
        render 'users/show'
    end 

    def new 
        @user = User.new
    end 

    def create 
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
           session[:user_id] = @user.id
           redirect_to user_path(@user), :notice => "Welcome back!"
        else 
           flash.now.alert = "Your email or password was invalid."
           redirect_to new_session_path 
        end
    end 

    def destroy 
        session[:user_id] = nil 
        redirect_to '/sessions'
    end 

    private 
    
    def login(user)
        session[:user_id] = nil 
    end 
end 
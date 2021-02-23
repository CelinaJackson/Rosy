class UsersController < ApplicationController 

    def index 
        @user = User.all 
    end 

    def show 
        @user = User.find_by_id(params[:id])
       
        # if current_user.id == params[:id]
        #     render :show 
        # else 
        #     flash[:alert] = "You don't have permission to access that profile"
        #     redirect_to user_path(current_user.id)
        # end  
    end 

    def new 
        @user = User.new
    end 

    def create 
        @user = User.create(user_params)
        if @user.valid?
            @user.save  
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
          render :new 
        end 
    end  

    private 

    def set_user
        @user = current_user
      end

    def user_params 
        params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
    end 
end
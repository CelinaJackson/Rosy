class WinesController < ApplicationController 
    def index 
        @wines = Wine.all
    end 

    def show 
        @wine = Wine.find(params[:id])
    end 

    def new 
        @wine = Wine.new
    end 

    def create 
        @wine = Wine.new(wine_params)
        # if logged_in? && @wine.user == current_user 
          if @wine.save 
           redirect_to wine_path(@wine)
        else 
            redirect_to new_wine_path 
        end 
    end 

    def edit 
        @wine = Wine.find(params[:id])
    end 

    def update
        @wine = Wine.find(params[:id])
        # if logged_in? && @wine.user == current_user 
           if @wine.update(wine_params)
        else 
            flash[:alert] = "You can't edit a wine someone else added."
            redirect_to wine_path(@wine)
        end 
    end 

    def destroy 
        @wine = Wine.find(params[:id])
        if @wine.user == current_user 
            @wine.destroy 
            flash[:alert] = "Wine was deleted."
            redirect_to wines_path 
        else 
            flash[:alert] = "You can't delete a wine someone else added."
            redirect_to wine_path(@wine)
        end
    end

    private 

    def wine_params 
        params.require(:wine).permit(:name, :region, :wine_type)
    end 
end
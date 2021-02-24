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
          if @wine.save 
           redirect_to wine_path(@wine)
        else 
            redirect_to new_wine_path 
        end 
    end 
 end 
    
    private 

    def wine_params 
        params.require(:wine).permit(:name, :region, :wine_type)
    end 
end
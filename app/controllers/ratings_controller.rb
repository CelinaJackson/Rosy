class RatingsController < ApplicationController 

    skip_before_action :login_required, :only => [:index]

    def index 
        @ratings = Rating.all
    end 

    def show 
        @rating = Rating.find(params[:id])
    end 

    def new 
        @rating = Rating.new
    end 

    def create 
        @rating = Rating.new(rating_params)
        if @rating.valid?
            @rating.save  
            redirect_to rating_path(@rating)
        else 
          render :new
        end
    end 

    def edit 
        @rating = Rating.find(params[:id])
    end 

    def update
        @rating = Rating.find(params[:id])
        if @rating.user == current_user 
            @rating.update(rating_params)
        else 
            flash[:alert] = "You can't edit someone else's rating."
            redirect_to rating_path(@rating)
        end 
    end 

    def destroy 
        @rating = Rating.find(params[:id])
        if @rating.user == current_user 
            @rating.destroy 
            flash[:alert] = "Rating was deleted."
            redirect_to ratings_path 
        else 
            flash[:alert] = "You can't delete someone else's rating."
            redirect_to rating_path(@rating)
        end
    end 

    private 

    def rating_params
        params.require(:rating).permit(:description, :rating_number, wine_attributes: [:name, :wine_type, :region])
    end 
end
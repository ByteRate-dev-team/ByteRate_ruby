class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show 
    @restaurant = Restaurant.find(params[:id]) # show page should be passed in an id to search for
  end

  def new 
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(name:, bio: , clean_score: , price_score: , ambiance_score: )

    if @restaurant.save
      redirect_to @restaurant
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update 

    @restaurant = Restaurant.find(params[:id])

    if(@restaurant.update(restaurant_params))
      redirect_to @restaurant
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :bio, :clean_score, :price_score, :ambiance_score)
    end
end

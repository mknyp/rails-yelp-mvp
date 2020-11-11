class RestaurantsController < ApplicationController

  before_action :find_task, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    redirect_to restaurant_path(restaurant.id)
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def find_task
    @restaurant = Restaurant.find(params[:id])
  end
end

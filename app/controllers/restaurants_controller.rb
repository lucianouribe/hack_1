class RestaurantsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_restaurant, except: [:index, :new, :create]

  def index
    @restaurants= Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user_id = current_user.id
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path, success: "Restaurant info updated successfully"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, success: "Restaurant deleted successfully"
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :street, :city, :state, :postal, :delivery, :latitude, :longitude)
  end
end

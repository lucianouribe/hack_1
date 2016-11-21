class OrdersController < ApplicationController
  before_action :set_restaurant
  before_action :set_order, except: [:index, :new, :create]

  def index
    @order = @restaurant.order
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.restaurant_id = @restaurant.id
    if @order.save
      redirect_to restaurant_order_path(@restaurant, @order), success: 'Perfect!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to restaurant_order_path(@restaurant, @order), success: 'Great!'
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @order.destroy
    redirect_to order_path(@order), success: 'Item Successfully Deleted!'
  end

  private
  def order_params
    params.require(:order).permit(:main_dish, :drinks, :dessert, :m_price, :d_price, :ds_price)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_order
    # @order = @restaurant.order
    @order = Order.find(params[:id])
  end
end

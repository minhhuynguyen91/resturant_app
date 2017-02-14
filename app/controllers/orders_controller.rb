class OrdersController < ApplicationController

  def new
    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.build
  end
  
  def create
    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.build(order_params)
    if @order.save
      flash[:success] = "Thank you for your order."
      redirect_to food_item_order_path(@food_item, @order)
    else
      render 'new'
    end
  end
  
  def index
    @food_item = FoodItem.find(params[:food_item_id])
    @orders = @food_item.orders.all
  end
  
  def show
    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.find(params[:id])
    @date_time = DateTime.parse(@order.created_at.to_s)
  end


  private
    def order_params
      params.require(:order).permit(:quantity, :customer_name, :phone_number)
    end
end

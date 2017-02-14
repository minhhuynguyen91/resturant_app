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
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  
  private
    def order_params
      params.require(:order).permit(:quantity, :customer_name, :phone_number)
    end
end

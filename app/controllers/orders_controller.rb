class OrdersController < ApplicationController

  def new
    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.build
  end
  
  def create
    send_sms = SendSMS.new()

    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.build(order_params)
    if @order.save
      #OrderMailer.order_food(@food_item, @order).deliver_now
      send_sms.send_order_sms(@food_item, @order)
      
      flash[:success] = "Thank you for your order"
      redirect_to food_item_order_path(@food_item, @order)
      
    else
      flash[:error] = @order.errors.full_messages
      render 'new'
    end
  end
  
  def show
    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.find(params[:id])
    @date_time = DateTime.parse(@order.created_at.to_s)

  end
  
  def index
    @food_item = FoodItem.find(params[:food_item_id])
    @orders = @food_item.orders.all
  end
  
  private
    def order_params
      params.require(:order).permit(:quantity, :customer_name, :phone_number, :address, :delivery, :coupon)
    end
end

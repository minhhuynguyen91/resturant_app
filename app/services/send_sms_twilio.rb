class SendSMS
  def send_order_sms(food_item, order)
    
    # put your own credentials here
    account_sid = ENV['TWILIO_SID']
    auth_token  = ENV['TWILIO_TOKEN']
    
    # set up a client to talk to the Twilio REST API
    
    body_str = "Your #{food_item.name} order has been created\n\
Customer name: #{order.customer_name}\n\
Phone: #{order.phone_number}\n\
Address: #{order.address}\n\
Quantity: #{order.quantity}\n\
Delivery: #{order.delivery}"
    
    @client = Twilio::REST::Client.new account_sid, auth_token 
    
    @client.account.messages.create(
      :from => ENV['TWILIO_PHONE'],
      :to => ENV['MY_PHONE'],
      :body => body_str
    )


  end
end
class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_food.subject
  #
  default from: 'develop_rails_4fun@zoho.com'

  def order_food(food_item, order)
    @food_item = food_item
    @order = order
    mail(to: "ng.huyminh91@gmail.com", subject: "Your order has been created")
  end
end

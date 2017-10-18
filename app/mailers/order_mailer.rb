class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order         = order
    @user          = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDstore] Thanks for order, and there are the details of the order #{order.token}")
  end
end

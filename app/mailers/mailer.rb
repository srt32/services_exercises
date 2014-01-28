class Mailer < ActionMailer::Base
  default from: "frank@franks-monsterporium.com"

  def welcome_email(params)
    @email = params["email"]
    @full_name = params["full_name"]
    mail(to: @email, subject: "Welcome to Frank's Monsterporium!")
  end

  def order_confirmation(order)
    @order = order
    @user = order.user
    mail(to: @user.email, subject: "Thanks for your purchase!")
  end
end

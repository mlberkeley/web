class SubscribeMailer < ApplicationMailer
  def welcome_user(user)
    @user = user
    mail to: user.email,
    subject: "Thank you for subscribing to our newsletter!"
  end
end

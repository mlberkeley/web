# Preview all emails at http://localhost:3000/rails/mailers/subscribe_mailer
class SubscribeMailerPreview < ActionMailer::Preview
  def welcome_user
    user = User.new(email: "sohyeonlee@berkeley.edu")
    SubscribeMailer.welcome_user(user)
  end
end

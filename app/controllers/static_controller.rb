class StaticController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @selected_projs = Project.last(4)
  end

  def about
  end

  def contact
  end

  def subscribe
    @user = User.new(user_params)
    if @user.save
      SubscribeMailer.welcome_user(@user).deliver_now
      redirect_to root_path, flash: {success: "You have been subscribed to our mailing list!"}
    else
      redirect_to root_path, flash: {error: "You have already signed up!"}
    end
  end

private
  def user_params
    params.require(:user).permit(:email)
  end
end

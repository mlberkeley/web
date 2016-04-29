class User < ActiveRecord::Base
  before_validation :check_for_existence, :check_for_duplicate
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

private
  def check_for_existence
    return false if !self.email.present?
  end

  def check_for_duplicate
    return !User.find_by_email(self.email).present?
  end
end

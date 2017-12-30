class SubscriptionMailer < ActionMailer::Base
  default from: "info@procoders.io"

  def welcome_email(email)
    @email = email
    mail(to: @email, subject: "Welcome to Unit 1")
  end
end
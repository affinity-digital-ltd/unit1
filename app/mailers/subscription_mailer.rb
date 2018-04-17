class SubscriptionMailer < ActionMailer::Base
  default from: "info@procoders.io"

  def welcome_email(email)
    @email = email
    mail(to: @email, subject: "Welcome to Unit 1")
  end

  def new_post_email(email, post_id)
    @email = email
    @post = Post.find(post_id)
    mail(to: @email, subject: "A new post has been published!")
  end
end
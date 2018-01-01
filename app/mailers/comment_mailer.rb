class CommentMailer < ActionMailer::Base
  default from: "info@procoders.io"

  def new_comment_email(comment_id)
    @comment = Comment.find(comment_id)
    mail(to: "kris@procoders.io", subject: "A new comment has been posted!")
  end
end
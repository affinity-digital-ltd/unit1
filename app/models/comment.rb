class Comment < ApplicationRecord
  validates :name, :body, presence: true

  belongs_to :post

  after_create :send_new_comment_email

  private
  def send_new_comment_email
    SendNewCommentEmailJob.perform_async(id)
  end
end
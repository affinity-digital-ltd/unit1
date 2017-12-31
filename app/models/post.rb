class Post < ApplicationRecord
  validates :title, :body, :intro, presence: true
  validates :title, uniqueness: true

  has_many :comments, dependent: :destroy

  after_create :queue_email_notifications

  private

  def queue_email_notifications
    QueueNewPostEmailsJob.perform_async(id)
  end
end
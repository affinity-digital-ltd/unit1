class QueueNewPostEmailsJob
  include Sidekiq::Worker

  def perform(post_id)
    QueueNewPostEmails.call(post_id)
  end
end
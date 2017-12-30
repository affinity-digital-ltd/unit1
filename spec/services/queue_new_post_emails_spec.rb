require 'rails_helper'

RSpec.describe QueueNewPostEmails do
  describe "queueing emails" do
    let!(:subscriber) { create_list(:subscriber, 5) }
    let(:post) { create(:post) }
    subject { QueueNewPostEmails.call(post.id) }

    it "should queue an email" do
      expect { subject }
        .to change(SendNewPostEmailJob.jobs, :size).by(5)
    end
  end
end
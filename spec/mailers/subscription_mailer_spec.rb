require 'rails_helper'

RSpec.describe SubscriptionMailer do
  describe "Sending a welcome email" do
    subject { SubscriptionMailer.welcome_email('me@example.com') }

    it "should queue the email" do
      expect { subject.deliver_now }
      .to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end

  describe "Sending a new post email" do
    let(:post) { create(:post) }
    subject { SubscriptionMailer.new_post_email('me@example.com', post.id) }

    it "should queue the email" do
      expect { subject.deliver_now }
      .to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
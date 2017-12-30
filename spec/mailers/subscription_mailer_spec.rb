require 'rails_helper'

RSpec.describe SubscriptionMailer do
  describe "Sending an email" do
    subject { SubscriptionMailer.welcome_email('me@example.com') }

    it "should queue the email" do
      expect { subject.deliver_now }
      .to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
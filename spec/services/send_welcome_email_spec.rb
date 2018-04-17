require 'rails_helper'

RSpec.describe SendWelcomeEmail do
  describe "Sending an email" do
    subject { SendWelcomeEmail.call('example@example.com') }

    it "should queue an email" do
      expect { subject }
        .to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
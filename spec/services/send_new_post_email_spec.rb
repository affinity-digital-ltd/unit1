require 'rails_helper'

RSpec.describe SendNewPostEmail do
  describe "Sending an email" do
    let(:post) { create(:post) }
    subject { SendNewPostEmail.call('example@example.com', post.id) }

    it "should queue an email" do
      expect { subject }
        .to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
require 'rails_helper'

RSpec.describe SendNewCommentEmail do
  describe "Sending an email" do
    let(:comment) { create(:comment) }
    subject { SendNewCommentEmail.call(comment.id) }

    it "should queue an email" do
      expect { subject }
        .to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
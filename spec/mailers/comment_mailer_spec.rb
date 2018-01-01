require 'rails_helper'

RSpec.describe CommentMailer do
  describe "Sending a new comment email" do
    let(:comment) { create(:comment) }
    subject { CommentMailer.new_comment_email(comment.id) }

    it "should queue the email" do
      expect { subject.deliver_now }
      .to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
require 'rails_helper'

RSpec.describe Comment do
  describe "creating a valid comment" do
    let(:comment) { build(:comment) }
    
    it "should be valid" do
      expect(comment).to be_valid
    end
  end

  describe "creating an invalid comment" do
    let(:comment) { Comment.new }

    it "should be invalid" do
      expect(comment).to_not be_valid
    end
  end

  describe "queueing email notifications" do
    subject { create(:comment) }

    it "should queue a worker" do
      expect { subject }
        .to change(SendNewCommentEmailJob.jobs, :size).by(1)
    end
  end
end
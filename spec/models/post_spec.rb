require 'rails_helper'

RSpec.describe Post do
  describe "creating a valid post" do
    let(:post) { build(:post) }
    
    it "should be valid" do
      expect(post).to be_valid
    end
  end

  describe "creating an invalid post" do
    let(:post) { Post.new }

    it "should be invalid" do
      expect(post).to_not be_valid
    end
  end

  describe "creating post with the same title" do
    let!(:post) { create(:post) }
    
    it "should be invalid" do
      post2 = build(:post, title: post.title)

      expect(post2).to_not be_valid
    end
  end
end
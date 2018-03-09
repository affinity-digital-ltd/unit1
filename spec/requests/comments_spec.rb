require 'rails_helper'

RSpec.describe "Comments", type: :request do
  describe "adding a comment" do
    let!(:post) { create(:post) }

    let(:query_string) do %|
      mutation { 
        addComment(postId: #{post.id}, name: "test", body: "my body") { 
          id
          name
          body
        } 
      }|
    end

    let(:result) do
      Unit1Schema.execute(query_string)
    end
      
    it "should return the comment" do
      comment_result = result.fetch("data").fetch("addComment")
      expect(comment_result.fetch("name")).to eq "test"
      expect(comment_result.fetch("body")).to eq "my body"
    end
  end
end
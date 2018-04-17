require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "requesting a post" do
    let!(:post) { create(:post_with_comments) }

    let(:query_string) do %|{ 
      post(id: #{post.id}) { 
        id
        title
        intro
        body
        created_at
        comments {
          id
          name
          body
          created_at
        }
      } 
      }|
    end

    let(:result) do
      Unit1Schema.execute(query_string)
    end
      
    it "return the post and all comments" do
      post_result = result.fetch("data").fetch("post")
      expect(Integer(post_result.fetch("id"))).to eq post.id
      expect(post_result.fetch("comments").length).to eq 3
    end
  end

  describe "requesting all posts" do
    let!(:post) { create_list(:post_with_comments, 5) }

    let(:query_string) do %|{ 
      posts { 
        id
        title
        intro
        body
        created_at
        comments {
          id
          name
          body
          created_at
        }
      } 
      }|
    end

    let(:result) do
      Unit1Schema.execute(query_string)
    end
      
    it "return all posts" do
      post_result = result.fetch("data").fetch("posts")
      expect(post_result.length).to eq 5
    end
  end
end
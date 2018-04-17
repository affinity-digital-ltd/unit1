class PostsController < ApplicationController
  def show
    @post = Post.includes(:comments).find(params[:id])
    @comments = @post.comments.order(created_at: :desc)
    @comment = Comment.new(post_id: params[:id])
  end

  def index
    @subscriber = Subscriber.new
    @posts = Post.order(created_at: :desc)
  end
end
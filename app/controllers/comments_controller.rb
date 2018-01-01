class CommentsController < ApplicationController
  include Secured
  
  before_action :find_post, only: [:new, :create]

  def new
    @comment = @post.comments.build
  end

  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to post_path(@comment.post), notice: 'Your comment has been added'
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :body, :post_id)
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
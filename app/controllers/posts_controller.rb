class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, notice: "Post #{@post.title} has been successfully created."
    else
      render :new 
    end
  end

  def edit
  end

  def update
    @post.update_attributes(post_params)

    if @post.save
      redirect_to posts_path, notice: "Post #{@post.title} has been successfully updated."
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path, notice: "Post deleted"
    else
      render :index
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :intro, :body)
  end
end
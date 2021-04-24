class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at': :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to root_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :message, :user_id)
  end
end

class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @ppst = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
     def post_params
      params.require(:post).permit(:title, :body, :category)
     end
end
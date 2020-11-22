class PostsController < ApplicationController
  def top

  end
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:content))
    if @post.save
      redirect_to posts_path
    else render 'new'
    end
  end

  def edit
  end

  def update
  end

  def delete
  end
end

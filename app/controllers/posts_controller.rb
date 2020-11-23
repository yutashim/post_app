class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    if params.has_key?('post')
      @post = Post.new(params.require(:post).permit(:content))
    else
      @post = Post.new
    end
  end

  def create
    @post = Post.new(params.require(:post).permit(:content))
    if @post.save
      redirect_to posts_path
    else render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:content))

  end
  def delete
  end

  def confirm
    @post = Post.new(params.require(:post).permit(:content))
    render 'new' if @post.invalid?
  end
end

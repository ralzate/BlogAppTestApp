class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @posts = Post.paginate(page: params[:page], per_page: 10)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :published_at)
  end
end
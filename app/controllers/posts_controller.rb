class PostsController < ApplicationController

  # Crud = create, read, update and destroy
  before_action :get_post, only: [:show, :edit, :update, :destroy]
  #view
  def index
    @posts = Post.all
  end
  #view 
  def show 
  end
  #view
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "Post has been created!"
    else 
      redirect_to new_post_path, notice: "There were some problems please fix them"
    end
  end
  #view
  def edit 
  end

  def read 
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post has been Updated!"
    else 
      redirect_to edit_post_path(@post), notice: "Post was not Updated!"
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: "Post Deleted"
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
  params.require(:post).permit(:title, :body)
  end
end


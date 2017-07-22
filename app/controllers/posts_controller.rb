class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_admin!

  def create
    @post = Post.create(post_params)
    if @post.valid?
      flash[:notice] = "Post Uploaded Successfully"
      redirect_to root_path
    else
      render :new, status: :inprocessable_entity
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.valid?
      flash[:notice] = "Post Updated Successfully"
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
		@post.destroy
		redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:photo, :caption)
  end
end

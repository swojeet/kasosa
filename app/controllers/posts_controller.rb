class PostsController < ApplicationController

  def create
    @post = Post.create(post_params)
    if @post.valid?
      flash[:notice] = "Post Uploaded Successfully"
      redirect_to root_path
    else
      flash[:alert] = "Error Uploading Post!"
      redirect_to root_path
    end
  end

  def new
    @post = Post.new
  end

  private
  def post_params
    params.require(:post).permit(:photo, :caption)
  end
end

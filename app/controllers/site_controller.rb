class SiteController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def gallery
    @posts = Post.all.order("created_at DESC")
  end
end

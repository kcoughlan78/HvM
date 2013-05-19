class ForumController < ApplicationController
  def index
    @posts = Post.order("created_at DESC")
  end

  def tech
    @posts = Post.order("created_at DESC").find_all_by_category("Tech")
  end

  def sports
    @posts = Post.order("created_at DESC").find_all_by_category("Sports n' Tech")
  end

  def gaming
    @posts = Post.order("created_at DESC").find_all_by_category("Gaming")
  end
end

class ForumController < ApplicationController
  def index
    @posts = Post.order(:created_at)
  end

  def tech
    @posts = Post.find_all_by_category("Tech")
  end

  def sports
    @posts = Post.find_all_by_category("Sports")
  end
end

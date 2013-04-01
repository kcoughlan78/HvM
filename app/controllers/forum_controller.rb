class ForumController < ApplicationController
  def index
    @posts = Post.order(:created_at)
  end
end

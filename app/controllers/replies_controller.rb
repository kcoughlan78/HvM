class RepliesController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]

  def create
    @post = Post.find(params[:post_id])
    @reply = @post.replies.build(params[:reply])
    @reply.user_email = current_user.email
    @reply.save
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @reply = @post.replies.find(params[:id])
    @reply.destroy
    redirect_to post_path(@post)
  end
end

class PostsController < ApplicationController
  before_filter :authenticate, :except => [:show]
  before_filter :is_admin?, :except => [:show, :new, :create]
  before_filter :is_suspended?

  def index
    @posts = Post.order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end


  def show
    @post = Post.find(params[:id])
    @post.view += 1
    @post.save


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  def loadimage
    @uploader = Post.new.image
    @uploader.success_action_redirect = new_post_url
  end



  def new
    @post = Post.new(key: params[:key])
  end



  def edit
    @post = Post.find(params[:id])
  end


  def create
    @post = current_user.posts.create(params[:post])
    #@user = user.email

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def popularposts
    @posts = Post.order("view DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end


  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end

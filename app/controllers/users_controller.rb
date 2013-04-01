class UsersController < ApplicationController
  before_filter :is_admin?, :except => [:new, :show, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.reg_email(@user).deliver

        format.html { redirect_to(root_url, :notice => 'User was successfully created.') }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def index
    @users = User.order("email")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @user = current_user
  end

  def destroy
    @user = User.delete(params[:id])
  end

end

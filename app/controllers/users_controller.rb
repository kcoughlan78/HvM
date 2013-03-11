class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to login_path, :notice => "Congratulations you're all signed up, please login"
    else
      render 'new'
    end
  end
end

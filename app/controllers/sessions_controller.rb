class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Logged in!"
    else
      redirect_to login_url, :notice => "Unsuccessful login attempt"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "Thanks for coming!"
  end

  end

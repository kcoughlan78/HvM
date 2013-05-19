class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  # to ensure non admin users do not have access to admin controls
  helper_method :is_admin?
  def is_admin?
    if current_user and (current_user.admin == true)
      return true
      else
        insufficient_access
    end
  end

  def is_suspended?
    if current_user and (@current_user.suspended == "No")
      true
    else
      suspended_user
    end
  end
  # Stops unregistered users accessing all the sites functions re requirement 3.3.A
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by_id(session[:user_id])
  end
# Makes current_user available in templates as a helper
  helper_method :current_user
# Apply as a before_filter on any controller you want to protect
  def authenticate
    logged_in? ? true : access_denied
  end
# Predicate method to test for a logged in user
  def logged_in?
    current_user.is_a? User
  end
# Make logged_in? available in templates as a helper
  helper_method :logged_in?
  def access_denied
    redirect_to login_path, :notice => "Please log in to continue"
  end

  def insufficient_access
    redirect_to root_url :notice => "You do not have permission to view this page"
  end

  def suspended_user
    redirect_to root_url :notice => "Due to a breach in our code of conduct you account has been suspended"
  end
end



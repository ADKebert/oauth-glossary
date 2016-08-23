class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Assign the current user
  def current_user=(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def authenticate!
    redirect_to login_path unless logged_in?
  end

  protected
  # Check if an object is owned by the user
  def authorize!(object, asking_user)
    redirect_to action: :index unless object.owned_by_user?(asking_user)
  end
end

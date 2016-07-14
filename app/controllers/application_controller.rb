class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # making user_logged_in available in all views and all controllersch
  helper_method :user_logged_in?

  def user_logged_in?
    session[:user_id]
  end

end

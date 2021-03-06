class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private def logged_in?
    redirect_to users_log_in_path, notice: "You've been redirected" unless session[:log_in_teacher] || session[:log_in_student] || session[:log_in_parent]
  end
end

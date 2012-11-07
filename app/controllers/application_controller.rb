class ApplicationController < ActionController::Base
  protect_from_forgery

  # before_filter :find_user
  # def find_user
  #   @current_user = User.find_by_id(session[:login_id])
  # end

  def require_login
    if @current_user.blank?
      redirect_to root_url, notice: "You must be logged in!"
    end
  end


protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end


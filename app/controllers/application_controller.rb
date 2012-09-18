class ApplicationController < ActionController::Base
  protect_from_forgery

  # def require_login
  #   if @user.uid.blank?
  #     redirect_to root_url, notice: "You must be logged in!"
  #   end
  # end


private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end


class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :user_signed_in?
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    return if current_user
    redirect_to new_session_path, notice: "Пожалуйста, пройдите авторизацию!"
  end
end

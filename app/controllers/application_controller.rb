class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :user_signed_in?
  helper_method :current_user
  helper_method :current_user_id

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_user_id
    @current_user ||= User.find_by(id: session[:user_id])
    case @current_user.role
      when 'admin'
        @current_user_id = 1
      when 'shop'
        @current_user_id = 2
      when 'showroom'
        @current_user_id = 3
      when 'elit'
        @current_user_id = 4
      else
        @current_user_id = 0
    end
  end

  def user_signed_in?
    return if current_user
    redirect_to new_session_path, notice: "Пожалуйста, пройдите авторизацию!"
  end

end

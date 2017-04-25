class SessionsController < ApplicationController
  layout 'signin'
  #skip_before_action :user_signed_in?, except: :destroy

  def new
  end

  def create
    user = User.find_by(login: params[:login])
    password = Digest::MD5.hexdigest(params[:password])
    if user && user.password == password
      session[:user_id] = user.id
      case user.role
        when 'admin', 'boss'
          redirect_to statistics_path
        when 'showroom', 'shop'
          redirect_to orders_path
        when 'manufacture'
          redirect_to admin_index_path
        when 'factory'
          redirect_to factory_path
        else
          redirect_to new_session_path, alert: "Проблема с ролью пользователя в системе!"
      end
    else
      redirect_to new_session_path, alert: "Неверный логин или пароль!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: "Сеанс работы завершен!"
  end
end

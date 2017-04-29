class Users::BaseController < Users::ApplicationController

  before_action :current_user
  before_action :redirect_if_loggin

  helper_method :current_user

  layout 'application'

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def redirect_if_loggin
    if session[:user_id].nil?
      flash[:error] = "Please Login!"
      redirect_to new_users_session_path
    end
  end


end

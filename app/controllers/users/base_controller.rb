class Users::BaseController < Users::ApplicationController

  before_action :current_user

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


end

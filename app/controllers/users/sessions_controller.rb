class Users::SessionsController < Users::BaseController

  skip_before_action :current_user, except: [:destroy]
  skip_before_action :redirect_if_loggin

  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    flash[:success] = "Welcome User"
    redirect_to users_apps_path
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Good Bye"
    redirect_to root_url
  end

end

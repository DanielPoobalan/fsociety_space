class Users::SessionsController < Users::BaseController

  def new

  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to users_apps_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end

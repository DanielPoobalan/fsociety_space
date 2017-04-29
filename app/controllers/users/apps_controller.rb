class Users::AppsController < Users::BaseController

  skip_before_action :redirect_if_loggin

  def index
  end

end

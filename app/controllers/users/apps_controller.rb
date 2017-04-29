class Users::AppsController < Users::BaseController

  skip_before_action :redirect_if_loggin

  def index
    @landslides = Landslide.limit(5)
  end

end

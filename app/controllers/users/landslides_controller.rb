class Users::LandslidesController < Users::BaseController

  skip_before_action :redirect_if_loggin
  before_action :current_landslide

  def show
  end

  private

  def current_landslide
    @landslide = Landslide.find_by(id: params[:id])
  end

end

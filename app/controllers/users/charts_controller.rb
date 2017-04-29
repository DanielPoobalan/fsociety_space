class Users::ChartsController < Users::BaseController

  skip_before_action :redirect_if_loggin

  def index
    @landslides = Landslide.all

    @aa = Landslide.where.not(date:nil).select("date_trunc( 'year', date ) as year, sum(fatalities) as total_fatality").group('year')

    # aa.each do |x|
    #   x.total_fatality
    #   puts x.year
    #   count += x.total_fatality
    # end

    @arr =     [
    [3, 2005],
    [240, 2006],
    [882, 2007],
    [944, 2008],
    [1409,  2009],
    [3895,  2010],
    [1503,  2011],
    [833, 2012],
    [397, 2013],
    [2984,  2014],
    [1114,  2015],
    [668, 2016]]

  end
end
	
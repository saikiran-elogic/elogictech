class StaticSiteController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def location
    @lat_lng = cookies[:lat_lng].split("|")
  end
end

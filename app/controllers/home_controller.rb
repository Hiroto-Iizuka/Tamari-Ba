class HomeController < ApplicationController

  def index
    @roads_latest3 = Road.order(created_at: :desc).limit(3)
  end

end

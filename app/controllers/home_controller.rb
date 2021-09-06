class HomeController < ApplicationController

  RECENTRY_POST_3 = 3

  def index
    @roads_latest3 = Road.order(created_at: :desc).limit(RECENTRY_POST_3)
  end

end

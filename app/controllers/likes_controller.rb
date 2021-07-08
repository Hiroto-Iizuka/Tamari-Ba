class LikesController < ApplicationController
  def create
    @road = Road.find(params[:road_id])
    current_user.likes.create!(road_id: @road.id)
  end

  def destroy
    @road = Road.find(params[:road_id])
    current_user.likes.find_by(road_id: @road.id).destroy!
  end
end

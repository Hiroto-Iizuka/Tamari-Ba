class LikesController < ApplicationController
  def create
    current_user.likes.create!(road_id: params[:road_id])
    @road = Road.find(params[:road_id])
  end

  def destroy
    current_user.likes.find_by(road_id: params[:road_id]).destroy!
    @road = Road.find(params[:road_id])
  end
end

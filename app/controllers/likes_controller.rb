class LikesController < ApplicationController
  def create
    if current_user.likes.where(road_id: params[:road_id]).exists?
      render body: nil
    else
      current_user.likes.create!(road_id: params[:road_id])
      @road = Road.find(params[:road_id])
    end
  end

  def destroy
    current_user.likes.find_by(road_id: params[:road_id]).destroy!
    @road = Road.find(params[:road_id]) 
  end
end

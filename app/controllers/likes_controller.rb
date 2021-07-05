class LikesController < ApplicationController
  def create
    current_user.likes.create!(road_id: params[:road_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.likes.find_by(road_id: params[:road_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end

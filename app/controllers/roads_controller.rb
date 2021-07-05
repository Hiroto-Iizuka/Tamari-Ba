class RoadsController < ApplicationController

  def index
    @roads = Road.all
  end

  def show
    @road = Road.find(params[:id])
    @comments = @road.comments
    @comment = Comment.new
  end

  def new
    @road = Road.new
  end

  def create
    @road = Road.create(road_params)
  end

  def edit
    @road = Road.find(params[:id])
  end

  def update
    road = Road.find(params[:id])
    if params[:road][:road_image_ids]
      params[:road][:road_image_ids].each do |road_image_id|
        image = road.road_images.find(road_image_id)
        image.purge
      end
    end
    if road.update(road_params)
      flash[:success] = "編集しました"
      redirect_to roads_url
    else
      render :edit
    end
  end

  def destroy
    road = Road.find(params[:id])
    road.destroy
  end

  private
    def road_params
      params.require(:road).permit(:title, :description, :latitude, :longitude, :content, road_images: []).merge(user_id: current_user.id)
    end
end

class RoadsController < ApplicationController
  def index
    @roads = Road.all
  end

  def show
    @road = Road.find(params[:id])
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
    road.update(road_params)
  end

  def destroy
    road = Road.find(params[:id])
    road.destroy
  end

  private
  def road_params
    params.require(:road).permit(:title, :description, :latitude, :longitude)
  end
end

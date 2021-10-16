class RoadsController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  PER_PAGE = 9

  def index
    @q = Road.ransack(params[:q])
    @roads = @q.result.includes(:user, :likes).page(params[:page]).per(PER_PAGE).order(created_at: "DESC").with_attached_road_images
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
    @road = Road.new(road_params)
    if @road.save
      flash[:success] = "投稿が完了しました"
      redirect_to roads_path
    else
      flash[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  def edit
    @road = Road.find(params[:id])
  end

  def update
    @road = Road.find(params[:id])
    if params[:road][:road_image_ids]
      params[:road][:road_image_ids].each do |road_image_id|
        image = road.road_images.find(road_image_id)
        image.purge
      end
    end
    if @road.update(road_params)
      flash[:success] = "投稿を編集しました"
      redirect_to roads_path
    else
      flash[:alert] = "更新に失敗しました"
      render :edit
    end
  end

  def destroy
    Road.find(params[:id]).destroy
    flash[:success] = "投稿を削除しました"
    redirect_to roads_path
  end

  private
    def road_params
      params.require(:road).permit(:title, :description, :latitude, :longitude, :content, road_images: []).merge(user_id: current_user.id)
    end

    def correct_user
      @road = Road.find(params[:id])
        unless @road.user.id == current_user.id
          redirect_to roads_path
        end
    end
end

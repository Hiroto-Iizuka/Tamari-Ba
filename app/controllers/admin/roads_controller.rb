class Admin::RoadsController < ApplicationController
  before_action :if_not_admin
  before_action :set_road, only: [:show, :edit, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end


  def set_road
    @road = Road.find(params[:id])
  end
end

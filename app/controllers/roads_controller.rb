class RoadsController < ApplicationController
  def index
    @roads = Road.all
  end

  def show
  end

  def new
    @road = Road.new
  end

  def create
    Road.create(@road)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

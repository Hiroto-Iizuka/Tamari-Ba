class UsersController < ApplicationController
  PER_PAGE = 20

  def index
    @users = User.page(params[:page]).per(PER_PAGE).order(id: :asc)
    @prefectures = Prefecture.all
  end
  
  def show
    @user = User.find(params[:id])
    if @user.prefecture_id == nil
      @prefecture = "---"
    else
      @prefecture = Prefecture.find(@user.prefecture_id)
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :prefecture_id, :avatar)
    end
end

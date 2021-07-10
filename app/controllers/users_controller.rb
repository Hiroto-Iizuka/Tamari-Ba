class UsersController < ApplicationController
  def index
    @users = User.all
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

# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    sign_in User.guest
    flash[:success] = "ゲストユーザーとしてログインしました。"
    redirect_to roads_path
  end
end

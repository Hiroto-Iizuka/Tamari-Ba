# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  before_action :ensure_normal_user, only: :create

  def ensure_normal_user
    if params[:user][:email].downcase == "guest@example.com"
      flash[:danger] = "ゲストユーザーのパスワード再設定はできません。"
      redirect_to new_user_session_path
    end
  end
end

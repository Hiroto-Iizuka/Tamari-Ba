class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, if: :use_auth?
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success, :danger, :danger

  def after_sign_in_path_for(resource)
    roads_path(resource)
  end
  
  private

  def use_auth?
    unless controller_name == 'home' && action_name == 'index'
      true
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
  end

end

class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  #protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:major_id, :school_num])
    devise_parameter_sanitizer.permit(:account_update, keys: [:major_id, :school_num])
  end

end

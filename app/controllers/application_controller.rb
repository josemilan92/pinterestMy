class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  after_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_ip){|u| u.permit(:tr, :password_confirmation, :phone)}
  end
end

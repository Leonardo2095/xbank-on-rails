class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def after_sign_in_path_for(resources)
    user_path(resources)
  end

   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cpf])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :cpf])
  end
end

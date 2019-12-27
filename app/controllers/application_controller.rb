class ApplicationController < ActionController::Base
  # def after_sign_in_path_for(resource)
  #   current_user_path
  # end
  #
  # def after_sign_out_path_for(resource_or_scope)
  #   request.referrer
  # end

  #protect_from_forgery with: :exception
  before_action :authenticate_garbage_man!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id])
  end

end

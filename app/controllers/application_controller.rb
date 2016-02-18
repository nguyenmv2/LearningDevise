class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  ##Add these lines as replacement for attr_accessible
  before_filter :configure_sanitized_params, if: :devise_controller?
  def configure_santized_params
    devise_parameter_sanitizer.for(:sign_up) {
        |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me)
    }
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :phone_number, :driver_license,:nif,:bi,:address)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :address, :email, :nif, :phone_number,:driver_license,:bi, :password, :password_confirmation)
    end
  end

end

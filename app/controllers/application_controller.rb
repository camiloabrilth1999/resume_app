class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_devise_params, if: :devise_controller?

  protected

  def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :first_last_name, :second_last_name, :city_id, :national_identifier_number, :birth_date, :email, :password,
        :password_confirmation)
    end
  end
end

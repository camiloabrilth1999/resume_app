class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_devise_params, if: :devise_controller?

  protected

  def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :first_last_name, :second_last_name, :city_birth_id, :city_residence_id,
        :national_identifier_number, :birth_date, :email, :password, :country_nationality, :password_confirmation,
        :gender_id, :militarycard_id, :nacionalitiestype_id, :nationalidentifiertype_id, :address)
    end
  end

  def after_sign_in_path_for(resource)
    #stored_location_for(resource) || welcome_path
    user_path(current_user.id)
  end
end

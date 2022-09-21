class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:restaurant_name, :location, :owner_name, :food_type, :description, :timings ])
  end

  def authenticate_questionnaire
    unless current_customer.questionnaires.any?
      redirect_to new_questionnaire_path
    end
  end

end

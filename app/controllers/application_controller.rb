class ApplicationController < ActionController::Base
  before_action :check_restaurant_signed_in

  def authenticate_questionnaire
    unless current_customer.questionnaires.any?
      redirect_to new_questionnaire_path
    end
  end

  def check_restaurant_signed_in
    if restaurant_owner_signed_in?
      redirect_to restaurants_path
    end
  end
end

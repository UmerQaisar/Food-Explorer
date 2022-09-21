class ApplicationController < ActionController::Base

  def authenticate_questionnaire
    unless current_customer.questionnaires.any?
      redirect_to new_questionnaire_path
    end
  end

end

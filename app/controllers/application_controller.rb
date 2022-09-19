class ApplicationController < ActionController::Base
  before_action :authenticate_customer!

  def authenticate_questionnaire
    unless current_customer.questionnaires.any?
      redirect_to new_questionnaire_path
    end
  end
end

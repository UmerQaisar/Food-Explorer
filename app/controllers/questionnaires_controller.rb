class QuestionnairesController < ApplicationController
  before_action :authenticate_customer!

  def new
    @questionnaire = Questionnaire.new
  end

  def create
    if params[:question_one] && params[:question_two]
      @question_one = current_customer.questionnaires.new(question_no: 1, description: params[:question_one] )
      @question_two = current_customer.questionnaires.new(question_no: 2, description: params[:question_two] )

      if @question_one.save && @question_two.save
        redirect_to new_review_path
      end
    end
  end
end

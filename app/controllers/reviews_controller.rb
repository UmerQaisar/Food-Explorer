class ReviewsController < ApplicationController
  before_action :authenticate_questionnaire
  def index
    @reviews = Review.all
  end
  def new
    @review = Review.new
  end
  def create

  end
end

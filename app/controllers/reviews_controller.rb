class ReviewsController < ApplicationController
  before_action :authenticate_customer!
  before_action :authenticate_questionnaire

  def index
    @reviews = Review.all
  end
  def new
    @review = Review.new
    @reviews = Review.all
  end
  def create
    byebug
    @review = current_customer.reviews.new review_params
    if @review.save
      redirect_to new_review_path, notice: 'Review Added'
    end
  end

  def nearby
    @location = current_customer.questionnaires.second.description
    @reviews = Review.all
  end

  private
  def review_params
    params.require(:review).permit(:restaurant_name, :review, :rating, :images => [])
  end
end

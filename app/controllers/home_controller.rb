class HomeController < ApplicationController
  def homepage
    if customer_signed_in?
      redirect_to new_review_path
    elsif restaurant_owner_signed_in?
      redirect_to restaurants_path
    else
      redirect_to new_customer_session_path
    end
  end
end

class RestaurantsController < ApplicationController
  before_action :authenticate_restaurant_owner!

  def index
    @myrestaurant = RestaurantOwner.find_by_id(current_restaurant_owner.id)
    puts @myrestaurant.restaurant_name
  end

  def reviews
    @reviews = Review.all.where(:restaurant_name => current_restaurant_owner.restaurant_name );
  end
end

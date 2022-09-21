class RestaurantsController < ApplicationController

  def index
    puts 'Working'
  end

  def reviews

    @reviews = Review.all.where(:restaurant_name => current_restaurant_owner.restaurant_name );
  end
end

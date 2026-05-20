class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [ :create ] # Removed :new as per refactoring

  def create
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant), notice: "Review was successfully created."
    else
      # For the refactored version where the form is on the restaurant show page
      @restaurant = Restaurant.find(params[:restaurant_id]) # Re-fetch restaurant for rendering show page
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

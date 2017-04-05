class ReviewsController < ApplicationController
  before_action :set_restaurant
  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurants_path(@restaurant)
    else
      render :show
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

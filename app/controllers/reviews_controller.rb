class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = Booking.find(params[:booking_id])

    authorize @review

    @review.save
    redirect_to booking_path(@review.booking)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end

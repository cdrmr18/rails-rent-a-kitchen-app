class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.where("user = ? OR owner_id = ?", current_user, current_user.id)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.listing = Listing.find(params[:listing_id])
    @booking.owner_id = @booking.listing.user.id

    authorize @booking

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total)
  end
end

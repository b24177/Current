class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params.merge(car_id: params[:car_id]))
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'cars/show'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

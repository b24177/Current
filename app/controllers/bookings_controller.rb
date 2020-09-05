class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
def create
    @booking = Booking.new(booking_params.merge(car_id: params[:car_id]))
    @booking.user = current_user
    @booking.save
end

private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end

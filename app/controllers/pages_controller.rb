class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :dashboard

  def dashboard
    @user = current_user
    return unless @user

    @bookings = @user.bookings
    @cars = @user.cars
    @car_bookings = @user.cars.bookings
  end
end

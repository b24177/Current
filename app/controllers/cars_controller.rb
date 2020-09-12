class CarsController < ApplicationController
  def index
    if params[:query].present?
      @cars = Car.where("brand ILIKE ?", params[:query])
    else
      @cars = Car.all
    end
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.title = "#{@car.brand} #{@car.model}"
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new

    @markers =
      [{
        lat: @car.latitude,
        lng: @car.longitude
      }]
  end

  private

  def car_params
    params.require(:car).permit(:brand, :year, :model, :description, :price, :range, :address, photos: [])
  end
end

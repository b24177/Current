class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

end

# For the view, we need to include the car brand, model and year, and a photo and description of the car
# There should also be a Book button that can be bootstrap

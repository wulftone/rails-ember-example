class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def create
    @car = Car.create params[:car]
  end

  def destroy
    @car = Car.destroy params[:id]
  end
end

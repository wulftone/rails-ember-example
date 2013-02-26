class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find params[:id]
    render json: @car.to_json(root: true)
  end

  def create
    @car = Car.create params[:car]
    render json: @car.to_json(root: true)
  end

  def update
    @car = Car.find params[:id]
    @car.update_attributes params[:car]
    render json: @car.to_json(root: true)
  end

  def destroy
    @car = Car.destroy params[:id]
    render json: @car.to_json(root: true)
  end
end

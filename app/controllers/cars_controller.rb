class CarsController < ApplicationController

  def index
    render json: Car.all
  end

  def show
    render json: Car.find(params[:id])
  end

  def create
    @car = Car.create params[:car]
    status = @car.errors.present? ? :unprocessable_entity : 200
    render json: @car, status: status
  end

  def update
    @car = Car.find params[:id]
    status = @car.update_attributes(params[:car]) ? 200 : :unprocessable_entity
    render json: @car, status: status
  end

  def destroy
    Car.destroy params[:id]
    render json: "destroyed"
  end

end

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
    status = @car.errors.present? ? :unprocessable_entity : 200
    render json: @car.to_json(root: true), status: status
  end

  def update
    @car = Car.find params[:id]
    status = @car.update_attributes(params[:car]) ? 200 : :unprocessable_entity
    render json: @car.to_json(root: true), status: status
  end

  def destroy
    @car = Car.destroy params[:id]
    render json: @car.to_json(root: true)
  end
end

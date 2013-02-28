class MakesController < ApplicationController

  def index
    render json: Make.all
  end

  def show
    render json: Make.find(params[:id])
  end

  def create
    @make = Make.create params[:make]
    status = @make.errors.present? ? :unprocessable_entity : 200
    render json: @make, status: status
  end

  def update
    @make = Make.find params[:id]
    status = @make.update_attributes(params[:make]) ? 200 : :unprocessable_entity
    render json: @make, status: status
  end

  def destroy
    Make.destroy params[:id]
    render json: "destroyed"
  end

end

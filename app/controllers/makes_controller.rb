class MakesController < ApplicationController

  def index
    @makes = Make.all
    render json: @makes
  end

  def show
    @make = Make.find params[:id]
    render json: @make
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
    @make = Make.destroy params[:id]
    render json: "destroyed"
  end

end

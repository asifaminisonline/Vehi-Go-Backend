class Api::V1::CarsController < ApplicationController
  before_action :authenticate_user!, only: %i[destroy]
  before_action :set_car, only: %i[destroy show]

  def index
    @cars = Car.all
    render json:  @cars , status: :ok
  end

  def show
    # @car = Car.find(params[:id])
    render json: @car, status: :ok
  end

  def create
    car = Car.new(car_params)
    if car.save!
      render json: {
        status: 201,
        message: 'Car has been successfully created'
      }, status: :created
    else
      render json: { error: 'ERROR: Unable to create the car' }, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
  end

  def set_car
    @car = Car.find(params[:id])  
  end

  def car_params
    params.require(:car).permit(:name, :color, :description, :available, :price, :image)
  end
end

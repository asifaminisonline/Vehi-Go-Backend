class Api::V1::CarsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :destroy]
    before_action :set_car, only: [:destroy, :show]

    def index
        @cars = Car.all
        render json: {car: @cars}, status: :ok
    end

end

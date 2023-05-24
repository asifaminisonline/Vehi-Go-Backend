class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
    before_action :set_reservation, only: [:index, :destroy]

    def index
        @reservations = current_user.reservation.include(:cars).order(id: :desc)
        render json: @reservations, status: :ok
    end

end

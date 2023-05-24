class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
    before_action :set_reservation, only: [:index, :destroy]

    def index
        @reservations = current_user.reservation.include(:cars).order(id: :desc)
        render json: @reservations, status: :ok
    end

      def create
        reservation = Reservation.new(reserve_params)
        if booking.save!
            render json: {
              status: 201,
              message: 'Car has been successfully booked',
            }, status: :created
        else
            render json: { error: booking.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy 
        @reservation.destroy
        if booking.destroy
            render json: {
            status: 200,
            message: 'Booking successfully canceled',
            }, status: :ok
          else
            render json: { error: ' Unable to cancel the booking' }, status: :unprocessable_entity
        end
    end
end

class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate_user!, only: %i[create destroy]
  before_action :set_reservation, only: %i[index destroy]

  def index
    @reservations = current_user.reservation.include(:cars).order(id: :desc)
    render json: @reservations, status: :ok
  end

  def create
    reservation = Reservation.new(reserve_params)
    if reservation.save!
      render json: {
        status: 201,
        message: 'Car has been successfully booked'
      }, status: :created
    else
      render json: { error: reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
    if reservation.destroy
      render json: {
        status: 200,
        message: 'reservation successfully canceled'
      }, status: :ok
    else
      render json: { error: ' Unable to cancel the reservation' }, status: :unprocessable_entity
    end
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reserve_params
    params.require(:reservation).permit(:picking_date, :return_date, :car_id)
      .merge(user_id: current_user.id)
  end
end

class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate_user!, only: %i[destroy]
  before_action :set_reservation, only: %i[destroy]
  before_action :set_user, only: %i[create update destroy]

  def index
    @user = User.find(params[:user_id])
    @reservations = @user.reservations.includes(:car).order(picking_date: :desc)
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

  def set_user
    @user = User.find(params[:user_id])
  end

  def reserve_params
    params.require(:reservation).permit(:picking_date, :car_id, :user_id)
  end
end

class ReservationsController < ApplicationController


  # before_action: set_reservation, only: [:show, :edit]

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.create(reservation_permit_params)
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_permit_params)
    @reservation.save!
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_permit_params
    params.require(:reservation).permit(:check_in,:check_out, :room_id, :passenger_id )
  end
end


class ReservationsController < ApplicationController


  before_action: set_reservation, only: [:show, :edit]

  def index
    @reservation = Reservation.all
  end

  def show
  end

  def create
    @reservation = Reservation.create(reservation_permit_params)
    @reservation.save!
  end

  def edit
    @reservation.update(set_reservation)
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


class PassengersController < ApplicationController

  before_action: set_passanger, only: [:show, :edit]

  def index
    @passangers = Passenger.all
  end

  def show
  end

  def create
    @passanger = Passanger.new(passenger_permit_params)
    @passenger.save!
    if @automobile.save
      redirect_to owner_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @passenger.update(passenger_permit_params)
    @passenger.save!
  end

  private

  def set_passanger
    @passenger = Passenger.find(params[:id])
  end

  def passenger_permit_params
     params.require(:passenger).permit(:first_name, :last_name, :passaport_number, :country, :email, :phone )
  end

end

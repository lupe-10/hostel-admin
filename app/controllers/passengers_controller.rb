class PassengersController < ApplicationController

  # before_action: set_passenger, only: [:show, :edit]

  def index
    @passengers = Passenger.all
  end

  def show
    @passenger = Passenger.find(params[:id])
  end

  def new
  end

  def create
    @passenger = Passenger.new(passenger_permit_params)
    @passenger.save!
    if @passenger.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @passenger = Passenger.find(params[:id])
    @passenger.update(passenger_permit_params)
    @passenger.save!
  end

  private

  def set_passenger
    @passenger = Passenger.find(params[:id])
  end

  def passenger_permit_params
     params.require(:passenger).permit(:first_name, :last_name, :passaport_number, :country, :email, :phone )
  end

end

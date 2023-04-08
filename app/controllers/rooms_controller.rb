class RoomsController < ApplicationController

  # before_action: set_room, only: [:show, :edit]

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def create
    @room = Room.new(room_permit_params)
    @room.user = current_user
  end

  def edit
    @room = Room.find(params[:id])
    @room.update(room_permit_params)
    @room.save!
  end



  private


  def set_room
    @room = Room.find(params[:id])
  end

  def room_permit_params
    params.require(:room).permit(:number, :status, :comment, :account_setting_id)
  end

end


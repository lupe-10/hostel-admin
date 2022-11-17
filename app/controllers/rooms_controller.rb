class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def create
    @room = Room.new(room_permit_params)
    @room.user = current_user
  end

  def edit
    @room = Room.find(params[:id])
    @room.update(room_permit_params)
  end



  private

  def room_permit_params
    params.require(:room).permit(:number, :status, :comment, :account_setting_id)
  end

end


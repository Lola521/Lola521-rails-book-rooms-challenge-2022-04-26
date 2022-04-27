class BookingController < ApplicationController
  def index
  end
  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.room = @room
      if @booking.save
        redirect_to room_path(@room)
      else
        render "rooms/show"
      end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end

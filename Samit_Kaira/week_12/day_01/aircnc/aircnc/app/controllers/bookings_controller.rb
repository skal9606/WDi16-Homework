class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    respond_to do |f|
      f.html {}
      f.json { render json: @bookings.to_json}
    end
  end

  def create
    @booking = Booking.create(booking_params)

    puts "\n\n\n"
    p @booking.to_json
    puts  "\n\n\n"

    redirect_to "/charges/new"
  end

  private
    def booking_params
      params.require(:booking).permit(:name, :start_date, :end_date, :guests, :house_id, :user_id)
    end
end

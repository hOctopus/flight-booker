class BookingsController < ApplicationController

  def new
    @flight     = Flight.find_by_id(params[:flight_id])
    @booking    = @flight.bookings.build
    @passengers = params[:seats].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:success] = "Flight booked!"
      redirect_to @booking
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

    def booking_params
      params.require(:booking)
            .permit(:flight_id, passenger_attributes: [:name, :email])
    end
end

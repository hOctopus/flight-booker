class FlightsController < ApplicationController

  def index
    @airport_options = Airport.pluck(:name, :code, :id).sort
    @date_options    = Flight.all.sort.map { |f| f.start.strftime("%b %d, %Y, %I:%M %p") }
    @flights         = Flight.search(params)
    if @flights.none?
      flash[:danger] = "Sorry, there are no available flights."
    end
  end
end

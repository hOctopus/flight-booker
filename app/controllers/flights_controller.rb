class FlightsController < ApplicationController

  def index
    @airport_options = Airport.pluck(:name, :code, :id).sort
    @date_options    = Flight.all.map { |f| f.start.strftime("%b %d, %Y") }.uniq.sort.reverse
    @flights         = Flight.search(params)
  end
end

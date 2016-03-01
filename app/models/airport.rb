class Airport < ActiveRecord::Base

  has_many :arrivals,   class_name: 'Flight', foreign_key: 'origin_id'
  has_many :departures, class_name: 'Flight', foreign_key: 'destination_id'

  def arriving_flights
    self.arrivals.to_a
  end

  def departing_flights
    self.departures.to_a
  end
end

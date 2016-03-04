class Passenger < ActiveRecord::Base

  belongs_to :flight
  has_many   :tickets
  has_many   :bookings, through: :tickets
end

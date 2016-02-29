class Flight < ActiveRecord::Base

  has_one :origin,      class_name: 'Airport', foreign_key: 'arrivals_id'
  has_one :destination, class_name: 'Airport', foreign_key: 'departures_id'
end

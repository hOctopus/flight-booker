class Ticket < ActiveRecord::Base

  belongs_to :booking,   inverse_of: :tickets
  belongs_to :passenger, inverse_of: :tickets
end

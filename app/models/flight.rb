class Flight < ActiveRecord::Base

  belongs_to :origin,      class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'
  has_many   :passengers,  through: :bookings
  has_many   :bookings

  def self.search(params)
    params[:flight_date].nil? ? date = Date.today : date = params[:flight_date].to_date
    Flight.where(origin_id:      params[:from_id],
                 destination_id: params[:to_id],
                 start: date.beginning_of_day..date.end_of_day)
                .includes(:origin, :destination)
  end

  def duration_in_hours
    @hours = duration / 60
    @mins = duration % 60
    "#{@hours} hours, #{@mins} mins"
  end

  def format_date(date_time)
    date_time.strftime("%a, %b %d, %Y, %I:%M %p")
  end
end

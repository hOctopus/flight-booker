class Flight < ActiveRecord::Base

  belongs_to :origin,      class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'

  def self.search(params)
    date = params[:flight_date]
    date.nil? ? date = Date.today : date = date.to_date
    Flight.where(origin_id:      params[:from_id],
                 destination_id: params[:to_id],
                 start:          date.beginning_of_day..date.end_of_day)
                .includes(:origin, :destination)
  end

  def duration_in_hours
    Time.at(self.duration).utc.strftime("%H hr, %M min")
  end
end

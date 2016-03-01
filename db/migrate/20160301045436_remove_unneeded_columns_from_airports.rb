class RemoveUnneededColumnsFromAirports < ActiveRecord::Migration
  def change
    remove_column :airports, :arrivals_id
    remove_column :airports, :departures_id
  end
end

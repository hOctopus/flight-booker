class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :code
      t.references :arrivals,   index: true, foreign_key: true
      t.references :departures, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

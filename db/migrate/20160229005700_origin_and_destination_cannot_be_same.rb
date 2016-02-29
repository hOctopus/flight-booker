class OriginAndDestinationCannotBeSame < ActiveRecord::Migration
  def change
    add_index :flights, [:origin_id, :destination_id], unique: true
  end
end

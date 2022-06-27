class ChangeColumnTypeLatLongToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :sightings, :lat, :float
    change_column :sightings, :long, :float
  end
end

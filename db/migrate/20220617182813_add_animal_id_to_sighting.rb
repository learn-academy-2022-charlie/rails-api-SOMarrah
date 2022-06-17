class AddAnimalIdToSighting < ActiveRecord::Migration[7.0]
  def change
    add_column :sightings, :animal_id, :integer
  end
end

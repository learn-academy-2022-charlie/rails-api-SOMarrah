class CreateSightings < ActiveRecord::Migration[7.0]
  def change
    create_table :sightings do |t|
      t.datetime :date
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end

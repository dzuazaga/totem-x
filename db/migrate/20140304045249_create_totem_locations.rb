class CreateTotemLocations < ActiveRecord::Migration
  def change
    create_table :totem_locations do |t|
      t.string :code
      t.string :name
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end

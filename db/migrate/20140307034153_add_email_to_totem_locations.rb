class AddEmailToTotemLocations < ActiveRecord::Migration
  def change
    add_column :totem_locations, :email, :string
  end
end

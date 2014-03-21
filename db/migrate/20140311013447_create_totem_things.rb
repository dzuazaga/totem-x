class CreateTotemThings < ActiveRecord::Migration
  def change
    create_table :totem_things do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end

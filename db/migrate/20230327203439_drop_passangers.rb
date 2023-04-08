class DropPassangers < ActiveRecord::Migration[7.0]
  def change
       drop_table :passangers
  end
end

class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :number
      t.integer :status
      t.string :comment
      t.timestamps
    end
  end
end

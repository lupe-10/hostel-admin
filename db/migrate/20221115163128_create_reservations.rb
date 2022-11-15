class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :check_in
      t.string :check_out

      t.timestamps
    end
  end
end

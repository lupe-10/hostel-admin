class AddReferenceToReservations < ActiveRecord::Migration[7.0]
  def change
     add_reference :reservations, :room, foreign_key: true
     add_reference :reservations, :passenger, foreign_key: true
  end
end

class RemoveColumnToReservation < ActiveRecord::Migration[7.0]
  def change
       remove_column :reservations, :passenger_id, :bigint
  end
end

class AddReferenceToRooms < ActiveRecord::Migration[7.0]
  def change
     add_reference :rooms, :account_setting, foreign_key: true
  end
end

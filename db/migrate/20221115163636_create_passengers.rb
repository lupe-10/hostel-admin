class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :passaport_number
      t.string :country
      t.string :email
      t.string :phone
      t.timestamps
    end
  end
end

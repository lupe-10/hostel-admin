class CreateBeds < ActiveRecord::Migration[7.0]
  def change
    create_table :beds do |t|
      t.string :number
      t.integer :status
      t.integer :check_in
      t.integer :check_out
      t.timestamps
    end
  end
end

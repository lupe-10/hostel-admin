class AddReferenceToBeds < ActiveRecord::Migration[7.0]
  def change
     add_reference :beds, :room, foreign_key: true
  end
end

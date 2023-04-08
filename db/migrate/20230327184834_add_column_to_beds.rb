class AddColumnToBeds < ActiveRecord::Migration[7.0]
  def change
    remove_column :beds, :number, :string
    add_column :beds, :letter, :string
  end
end

class CreateAccountSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :account_settings do |t|

      t.timestamps
    end
  end
end

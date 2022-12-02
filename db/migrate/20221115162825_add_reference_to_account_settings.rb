class AddReferenceToAccountSettings < ActiveRecord::Migration[7.0]
  def change
     add_reference :account_settings, :user, foreign_key: true
  end
end

class RemovePasswordDigFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :password_dig, :string
  end
end

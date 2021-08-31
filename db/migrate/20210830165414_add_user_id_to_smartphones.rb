class AddUserIdToSmartphones < ActiveRecord::Migration[6.1]
  def change
    add_column :smartphones, :user_id, :integer
    add_index :smartphones, :user_id
  end
end

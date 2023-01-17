class ChangeIntegerLimitInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :contact, :integer, limit: 8
  end
end

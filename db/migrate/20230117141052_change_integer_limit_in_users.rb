class ChangeIntegerLimitInUsers < ActiveRecord::Migration[7.0]
    def up
      change_column :users, :contact, :integer, limit: 8
    end
  
    def down
      change_column :users, :contact, :integer
    end
end
class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :quantity
      t.float :amount

      t.timestamps
    end
  end
end

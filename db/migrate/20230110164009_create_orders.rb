class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true


      t.timestamps
    end
  end
end

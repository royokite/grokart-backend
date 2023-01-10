class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :description
      t.datetime :date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :payment, null: false, foreign_key: true


      t.timestamps
    end
  end
end

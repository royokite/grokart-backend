class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :name
      t.float :price
      t.integer :count
      t.string :description

      t.timestamps
    end
  end
end

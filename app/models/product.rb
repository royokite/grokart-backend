class Product < ApplicationRecord
    belongs_to :category

    has_many :payments
    has_many :users, through: :payments

    has_many :carts
    has_many :users, through: :carts
end

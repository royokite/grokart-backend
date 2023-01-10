class User < ApplicationRecord
    #has_many :products
    has_many :carts
    has_many :orders
    has_many :transactions
    has_many :payments
    has_many :deliveries
end

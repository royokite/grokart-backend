class User < ApplicationRecord
    has_many :carts
    has_many :products, through: :carts

    has_many :payments
    has_many :products, through: :payments

    has_many :orders
    has_many :transactions
    has_many :deliveries

    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true

end

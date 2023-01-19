class User < ApplicationRecord
    has_many :carts
    has_many :products, through: :carts

    has_many :payments
    has_many :products, through: :payments

    has_many :orders
    has_many :transactions
    has_many :deliveries

    has_secure_password
   
    # validations
    validates :username, presence: true, uniqueness:true
    validates :email, presence: true, uniqueness:true

    PASSWORD_FORMAT = /\A
        (?=.{6,})          # Must contain 6 or more characters
        (?=.*\d)           # Must contain a digit
        (?=.*[a-z])        # Must contain a lower case character
        (?=.*[A-Z])        # Must contain an upper case character
        (?=.*[[:^alnum:]]) # Must contain a symbol
    /x    

    validates :password, presence: true, format: { with: PASSWORD_FORMAT }, confirmation: true, on: :create
    validates :password, allow_blank: true, format: { with: PASSWORD_FORMAT }, confirmation: true, on: :update

end

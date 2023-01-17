class User < ApplicationRecord
    has_many :carts
    has_many :products, through: :carts

    has_many :payments
    has_many :products, through: :payments

    has_many :orders
    has_many :transactions
    has_many :deliveries

    has_secure_password

    enum role: [:admin, :buyer]
    
    # validations
    validates :username, presence: true, uniqueness:true
    validates :password, presence: true, format: { with: /\A(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}\z/, 
    message: "must contain at least 1 uppercase letter, 1 numeric character, 1 special character, and must be 6 characters in length" }

    # def role?(role)
    #     self.role == role.to_s
    # end
    
  

end

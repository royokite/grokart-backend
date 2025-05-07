class User < ApplicationRecord
  has_many :carts
  has_many :cart_products, through: :carts, source: :product

  has_many :payments
  has_many :purchased_products, through: :payments, source: :product

  has_many :orders
  has_many :transactions
  has_many :deliveries

  has_secure_password

  # Validations
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  PASSWORD_FORMAT = /\A
      (?=.{6,})          # Must contain 6 or more characters
      (?=.*\d)           # Must contain a digit
      (?=.*[a-z])        # Must contain a lower case character
      (?=.*[A-Z])        # Must contain an upper case character
      (?=.*[[:^alnum:]]) # Must contain a symbol
  /x

  validates :password, presence: true, format: { with: PASSWORD_FORMAT }, confirmation: true, on: :create
  validates :password, allow_blank: true, format: { with: PASSWORD_FORMAT }, confirmation: true, on: :update

  before_save :downcase_email_and_username

  private

  def downcase_email_and_username
    self.email = email.downcase
    self.username = username.downcase
  end
end

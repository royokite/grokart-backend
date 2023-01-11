class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :user_id, :quantity, :amount, :date
end

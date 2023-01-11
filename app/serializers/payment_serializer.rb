class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :amount, :date
end

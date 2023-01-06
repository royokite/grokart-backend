class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :payment_id, :description, :date
end

class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :description, :date
end

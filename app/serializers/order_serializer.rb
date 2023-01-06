class OrderSerializer < ActiveModel::Serializer
  attributes :id, :cart_id, :user_id, :date
end

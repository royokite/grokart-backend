class ProductSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :user_id, :name, :price, :count, :description
end

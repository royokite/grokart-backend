class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :count, :description
end

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :image, :name, :price, :count, :description
end

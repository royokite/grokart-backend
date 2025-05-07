class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :gender, :address, :contact, :username, :role
end

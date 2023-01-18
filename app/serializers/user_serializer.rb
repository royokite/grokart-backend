class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :gender, :address, :contact, :username, :password, :role
end

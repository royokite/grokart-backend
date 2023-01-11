class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :age, :gender, :address, :contact, :username, :password
  end
  
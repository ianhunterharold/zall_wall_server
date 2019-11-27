class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :picture, :name, :id
end

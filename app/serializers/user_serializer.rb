class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :picture, :name
end

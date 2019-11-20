class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :picture
end

class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :group_image, :user_id
end

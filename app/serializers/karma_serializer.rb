class KarmaSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :giving_user_id
end

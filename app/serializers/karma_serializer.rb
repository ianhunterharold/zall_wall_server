class KarmaSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :giving_user_id, :from, :picture_of_giver, :created_at
end

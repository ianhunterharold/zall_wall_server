class Group < ApplicationRecord
  belongs_to :user
  # has_many :user_groups
  # has_many :users, through: :user_groups
  # validates :group_id, uniqueness:  {scope: :user_id,
  #   message: "can only join a group once"}
end

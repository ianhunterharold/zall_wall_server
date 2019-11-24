class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true
  validates :username, presence: true
  validates :username, uniqueness: { case_sensative: false }
  has_many :karmas
  has_many :groups
  has_many :user_groups
  has_many :groups, through: :user_groups
end
class User < ApplicationRecord
  has_secure_password
  has_many :karmas
  has_many :groups

  # validates :password, presence: true
  validates :username, presence: true
  validates :username, uniqueness: { case_sensative: false }
end

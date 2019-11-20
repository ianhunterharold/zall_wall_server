class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true
  validates :username, presence: true
  validates :username, uniqueness: { case_sensative: false }
end

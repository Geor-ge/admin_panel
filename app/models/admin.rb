class Admin < ApplicationRecord

  validates :user_name, presence: true
  validates :password, presence: true, length: {minimum: 8}
  has_secure_password
end

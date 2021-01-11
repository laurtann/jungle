class User < ActiveRecord::Base
  validates :email, uniqueness: { case_sensitive: false }, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { in: 6..20 }
  validates :password_confirmation, length: { in: 6..20 }
  has_secure_password
end

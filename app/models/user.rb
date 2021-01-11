class User < ActiveRecord::Base
  has_secure_password
  authenticate_with_credentials
  validates :email, uniqueness: { case_sensitive: false }, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { in: 6..20 }
  validates :password_confirmation, length: { in: 6..20 }
end

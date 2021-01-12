class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { in: 6..20 }

  def self.authenticate_with_credentials(email, password)
    self.where("LOWER(email) = ?", email.downcase.delete(' ')).first.try(:authenticate, password)
  end
end

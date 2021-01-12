class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { in: 6..20 }

  before_save :downcase_email

  def self.authenticate_with_credentials(email, password)
    @user = self.find_by_email(email.downcase.delete(' '))
    @user && @user.authenticate(password) ? @user : nil
  end

  def downcase_email
    self.email.downcase!
  end
end

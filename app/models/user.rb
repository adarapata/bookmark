class User < ActiveRecord::Base
  attr_accessible :id, :lastupdate, :name, :password,:password_confirmation
  has_secure_password

  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  validates :password, presence: true
  validates :password_confirmation, presence: true

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
